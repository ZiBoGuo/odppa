#include <stdio.h>
#include <signal.h>
#include <math.h>
#include <stdlib.h>
#include "xparameters.h"
#include "xil_cache.h"

#define LONG 65536

const int netW = 256;//416 256
const int netH = 256;//416 256
const int classes = 80;//80 1
const float thresh = 0.5;
const float hier_thresh = 0.5;
const float nms = 0.45;
const int numBBoxes = 3;
const int numAnchors = 6;//9,6
const int relative = 1;

float biases[12] = { 10,14,23,27,37,58,81,82,135,169,344,319 }; // v3tiny
typedef struct
{
	int num;
	int channel;
	int width;
	int height;
	float data[LONG];
}Blob;


typedef struct {
	float x, y, w, h;
}box;

typedef struct {
	box bbox;
	int classes;
	float* prob;
	float* mask;
	float objectness;
	int sort_class;
}detection;

typedef struct layer {
	int batch;
	int total;
	int n, c, h, w;
	int out_n, out_c, out_h, out_w;
	int classes;
	int inputs, outputs;
	int *mask;
	float* biases;
	float* output;
	float* output_gpu;
}layer;

typedef enum {
	LOGISTIC
} ACTIVATION;




float activate(float x, ACTIVATION a);
void activate_array(float *x, const int n, const ACTIVATION a);
void do_nms_sort(detection *dets, int total, int classes, float thresh);
layer make_yolo_layer(int batch, int w, int h, int n, int total, int classes);
void free_yolo_layer(layer l);
static int entry_index(layer l, int batch, int location, int entry);
void forward_yolo_layer(const float* input, const layer l);
int yolo_num_detections(layer l, float thresh);
int num_detections(layer layers_params1, layer layers_params2, float thresh);
detection* make_network_boxes(layer layers_params1, layer layers_params2, float thresh, int* num);
void correct_yolo_boxes(detection* dets, int n, int w, int h, int netw, int neth, int relative);
box get_yolo_box(float* x, float* biases, int n, int index, int i, int j, int lw, int lh, int w, int h, int stride);
int get_yolo_detections(layer l, int w, int h, int netw, int neth, float thresh, int *map, int relative, detection *dets);
void fill_network_boxes(layer layers_params1, layer layers_params2, int w, int h, float thresh, float hier, int *map, int relative, detection *dets);
detection* get_network_boxes(layer layers_params1, layer layers_params2,
	int img_w, int img_h, float thresh, float hier, int* map, int relative, int *num);
detection* get_detections(Blob blob1, Blob blob2, int img_w, int img_h, int *nboxes);
void free_detections(detection *dets, int nboxes);
int nms_comparator(const void *pa, const void *pb);
float overlap(float x1, float w1, float x2, float w2);
float box_intersection(box a, box b);
float box_union(box a, box b);
float box_iou(box a, box b);
static inline float logistic_activate(float x);







float activate(float x, ACTIVATION a)
{

	switch (a) {
	case LOGISTIC:
		return logistic_activate(x);
	}
	return 0;
}

void activate_array(float *x, const int n, const ACTIVATION a)
{
	int i;
	for (i = 0; i < n; ++i) {
		x[i] = activate(x[i], a);
	}
}


static inline float logistic_activate(float x) {
	return 1. / (1. + exp(-x)); }

void do_nms_sort(detection *dets, int total, int classes, float thresh)
{
	int i, j, k;
	k = total - 1;
	for (i = 0; i <= k; ++i) {
		if (dets[i].objectness == 0) {
			detection swap = dets[i];
			dets[i] = dets[k];
			dets[k] = swap;
			--k;
			--i;
		}
	}
	total = k + 1;

	for (k = 0; k < classes; ++k) {
		for (i = 0; i < total; ++i) {
			dets[i].sort_class = k;
		}
		qsort(dets, total, sizeof(detection), nms_comparator);
		for (i = 0; i < total; ++i) {
			if (dets[i].prob[k] == 0) continue;
			box a = dets[i].bbox;
			for (j = i + 1; j < total; ++j) {
				box b = dets[j].bbox;
				if (box_iou(a, b) > thresh) {
					dets[j].prob[k] = 0;
				}
			}
		}
	}
}

layer make_yolo_layer(int batch, int w, int h, int n, int total, int classes)
{
	layer l = { 0 };
	l.n = n;
	l.total = total;
	l.batch = batch;
	l.h = h;
	l.w = w;
	l.c = n * (classes + 4 + 1);
	l.out_w = l.w;
	l.out_h = l.h;
	l.out_c = l.c;
	l.classes = classes;
	l.inputs = l.w*l.h*l.c;

	l.biases = (float*)calloc(total * 2, sizeof(float));
	for (int i = 0; i < total * 2; ++i) {
		l.biases[i] = biases[i];
	}
	l.mask = (int*)calloc(n, sizeof(int));
	if (total == 9) {
		if (l.w == 13) {
			int j = 6;
			for (int i = 0; i < l.n; ++i)
				l.mask[i] = j++;
		}
		if (l.w == 26) {
			int j = 3;
			for (int i = 0; i < l.n; ++i)
				l.mask[i] = j++;
		}
		if (l.w == 52) {
			int j = 0;
			for (int i = 0; i < l.n; ++i)
				l.mask[i] = j++;
		}
	}
	if (total == 6) {
		if (l.w == 8) {//13 8 16
			int j = 3;
			for (int i = 0; i < l.n; ++i)
				l.mask[i] = j++;
		}
		if (l.w == 16) {//26 16 32
			int j = 0;
			for (int i = 0; i < l.n; ++i)
				l.mask[i] = j++;
		}
	}
	l.outputs = l.inputs;
	l.output = (float*)calloc(batch*l.outputs, sizeof(float));
	return l;
}

void free_yolo_layer(layer l)
{
	if (NULL != l.biases) {
		free(l.biases);
		l.biases = NULL;
	}

	if (NULL != l.mask) {
		free(l.mask);
		l.mask = NULL;
	}
	if (NULL != l.output) {
		free(l.output);
		l.output = NULL;
	}

}

static int entry_index(layer l, int batch, int location, int entry)
{
	int n = location / (l.w*l.h);
	int loc = location % (l.w*l.h);
	return batch * l.outputs + n * l.w*l.h*(4 + l.classes + 1) + entry * l.w*l.h + loc;
}
/*
void forward_yolo_layer_gpu(const float* input,layer l)
{
	copy_gpu(l.batch*l.inputs,(float*)input,1,l.output_gpu,1);
	int b,n;
	for(b = 0;b < l.batch;++b){
	for(n =0;n< l.n;++n){
		int index = entry_index(l,b,n*l.w*l.h,0);
			activate_array_gpu(l.output_gpu + index, 2*l.w*l.h,LOGISTIC);
			index = entry_index(l,b,n*l.w*l.h,4);
			activate_array_gpu(l.output_gpu + index,(1 + l.classes)*l.w*l.h,LOGISTIC);

	}
	}
	cuda_pull_array(l.output_gpu,l.output,l.batch*l.outputs);
}
*/

void forward_yolo_layer(const float* input, const layer l)
{
	int b, n;
	memcpy(l.output, (float*)input, l.outputs*l.batch * sizeof(float));

#ifndef GPU
	for (b = 0; b < l.batch; ++b) {
		for (n = 0; n < l.n; ++n) {
			int index = entry_index(l, b, n*l.w*l.h, 0);
			activate_array(l.output + index, 2 * l.w*l.h, LOGISTIC);
			index = entry_index(l, b, n*l.w*l.h, 4);
			activate_array(l.output + index, (1 + l.classes)*l.w*l.h, LOGISTIC);
		}
	}
#endif

}
int yolo_num_detections(layer l, float thresh)
{
	int i, n, b;
	int count = 0;
	for (b = 0; b < l.batch; ++b) {
		for (i = 0; i < l.w*l.h; ++i) {
			for (n = 0; n < l.n; ++n) {
				int obj_index = entry_index(l, b, n*l.w*l.h + i, 4);
				if (l.output[obj_index] > thresh)
					++count;
			}
		}
	}
	return count;
}

int num_detections(layer layers_params1, layer layers_params2, float thresh)
{
	int s = 0;
	layer l1 = layers_params1;
	layer l2 = layers_params2;
	s += yolo_num_detections(l1, thresh);
	s += yolo_num_detections(l2, thresh);


	return s;

}

detection* make_network_boxes(layer layers_params1,layer layers_params2, float thresh, int* num)
{
	layer l = layers_params1;
	int i;
	int nboxes = num_detections(layers_params1, layers_params2, thresh);
	if (num) *num = nboxes;
	detection *dets = (detection*)calloc(nboxes, sizeof(detection));
	for (i = 0; i < nboxes; ++i) {
		dets[i].prob = (float*)calloc(l.classes, sizeof(float));
	}
	return dets;
}


void correct_yolo_boxes(detection* dets, int n, int w, int h, int netw, int neth, int relative)
{
	int i;
	int new_w = 0;
	int new_h = 0;
	if (((float)netw / w) < ((float)neth / h)) {
		new_w = netw;
		new_h = (h * netw) / w;
	}
	else {
		new_h = neth;
		new_w = (w * neth) / h;
	}
	for (i = 0; i < n; ++i) {
		box b = dets[i].bbox;
		b.x = (b.x - (netw - new_w) / 2. / netw) / ((float)new_w / netw);
		b.y = (b.y - (neth - new_h) / 2. / neth) / ((float)new_h / neth);
		b.w *= (float)netw / new_w;
		b.h *= (float)neth / new_h;
		if (!relative) {
			b.x *= w;
			b.w *= w;
			b.y *= h;
			b.h *= h;
		}
		dets[i].bbox = b;
	}
}


box get_yolo_box(float* x, float* biases, int n, int index, int i, int j, int lw, int lh, int w, int h, int stride)
{
	box b;
	b.x = (i + x[index + 0 * stride]) / lw;
	b.y = (j + x[index + 1 * stride]) / lh;
	b.w = exp(x[index + 2 * stride]) * biases[2 * n] / w;
	b.h = exp(x[index + 3 * stride]) * biases[2 * n + 1] / h;
	return b;
}
int get_yolo_detections(layer l, int w, int h, int netw, int neth, float thresh, int *map, int relative, detection *dets)
{
	int i, j, n, b;
	float* predictions = l.output;
	int count = 0;
	for (b = 0; b < l.batch; ++b) {
		for (i = 0; i < l.w*l.h; ++i) {
			int row = i / l.w;
			int col = i % l.w;
			for (n = 0; n < l.n; ++n) {
				int obj_index = entry_index(l, b, n*l.w*l.h + i, 4);
				float objectness = predictions[obj_index];
				if (objectness <= thresh) continue;
				int box_index = entry_index(l, b, n*l.w*l.h + i, 0);

				dets[count].bbox = get_yolo_box(predictions, l.biases, l.mask[n], box_index, col, row, l.w, l.h, netw, neth, l.w*l.h);
				dets[count].objectness = objectness;
				dets[count].classes = l.classes;
				for (j = 0; j < l.classes; ++j) {
					int class_index = entry_index(l, b, n*l.w*l.h + i, 4 + 1 + j);
					float prob = objectness * predictions[class_index];
					dets[count].prob[j] = (prob > thresh) ? prob : 0;
				}
				++count;
			}
		}
	}
	correct_yolo_boxes(dets, count, w, h, netw, neth, relative);
	return count;
}


void fill_network_boxes(layer layers_params1,layer layers_params2, int w, int h, float thresh, float hier, int *map, int relative, detection *dets)
{

	layer l1 = layers_params1;
	int count1 = get_yolo_detections(l1, w, h, netW, netH, thresh, map, relative, dets);
	dets += count1;

	layer l2 = layers_params2;
	int count2 = get_yolo_detections(l2, w, h, netW, netH, thresh, map, relative, dets);
	dets += count2;
}


detection* get_network_boxes(layer layers_params1,layer layers_params2,
	int img_w, int img_h, float thresh, float hier, int* map, int relative, int *num)
{
	detection *dets = make_network_boxes(layers_params1,layers_params2, thresh, num);
	fill_network_boxes(layers_params1, layers_params2, img_w, img_h, thresh, hier, map, relative, dets);
	return dets;
}

detection* get_detections(Blob blob1,Blob blob2, int img_w, int img_h, int *nboxes)
{


	layer layers_params1;
	layer layers_params2;

	layers_params1 = make_yolo_layer(1, blob1.width, blob1.height, numBBoxes, numAnchors, classes);
	forward_yolo_layer(&blob1.data[0], layers_params1);
	layers_params2 = make_yolo_layer(1, blob2.width, blob2.height, numBBoxes, numAnchors, classes);
	forward_yolo_layer(&blob2.data[0], layers_params2);


	detection* dets = get_network_boxes(layers_params1,layers_params2, img_w, img_h, thresh, hier_thresh, 0, relative, nboxes);

	free_yolo_layer(layers_params1);

	free_yolo_layer(layers_params2);

	if (nms) do_nms_sort(dets, (*nboxes), classes, nms);
	return dets;
}

void free_detections(detection *dets, int nboxes)
{
	int i;
	for (i = 0; i < nboxes; ++i) {
		free(dets[i].prob);
	}
	free(dets);
}


int nms_comparator(const void *pa, const void *pb)
{
	detection a = *(detection *)pa;
	detection b = *(detection *)pb;
	float diff = 0;
	if (b.sort_class >= 0) {
		diff = a.prob[b.sort_class] - b.prob[b.sort_class];
	}
	else {
		diff = a.objectness - b.objectness;
	}
	if (diff < 0) return 1;
	else if (diff > 0) return -1;
	return 0;
}

float overlap(float x1, float w1, float x2, float w2)
{
	float l1 = x1 - w1 / 2;
	float l2 = x2 - w2 / 2;
	float left = l1 > l2 ? l1 : l2;
	float r1 = x1 + w1 / 2;
	float r2 = x2 + w2 / 2;
	float right = r1 < r2 ? r1 : r2;
	return right - left;
}

float box_intersection(box a, box b)
{
	float w = overlap(a.x, a.w, b.x, b.w);
	float h = overlap(a.y, a.h, b.y, b.h);
	if (w < 0 || h < 0) return 0;
	float area = w * h;
	return area;
}

float box_union(box a, box b)
{
	float i = box_intersection(a, b);
	float u = a.w*a.h + b.w*b.h - i;
	return u;
}

float box_iou(box a, box b)
{
	return box_intersection(a, b) / box_union(a, b);
}




int main()
{

	Xil_ICacheEnable();
	Xil_DCacheEnable();
	unsigned short int *test_val;
	test_val=( unsigned short int * ) 0xC0000000;
	print("---Entering main---\n\r");
	while(1)
	{
		if(test_val[0] == 1)
		{
			break;
		}
		else
		{
			printf("not\n");
		}
	}
	Blob blob1, blob2;
	int data;
	//blob³õÊ¼»¯
	blob1.num = 1;
	blob1.channel = 255;
	blob1.width = 8;
	blob1.height = 8;

	blob2.num = 1;
	blob2.channel = 255;
	blob2.width = 16;
	blob2.height = 16;
/*
	float data1[1][255][8][8];
	float data2[1][255][16][16];;
	int count1 = 0;
	int count2 = 0;
	int a = 0;
	int b = 1;

	for (int i = 0; i < 8; i++)
	{
		for (int h = 0; h < 8; h++)
		{
			for (int w = 0; w < 8; w++)
			{
				a = 0;
				b = 1;
				for (int c = 0; c < 32; c++)
				{
					if (i == 7)
					{
						if (c != 0)
						{
							data = 1;

							if (c < 16)
							{
								a = a + 2;
								data1[0][i * 32 + (31 - a)][h][w] = (float)data / (float)pow(2, 10);
							}
							else
							{
								data1[0][i * 32 + (31 - b)][h][w] = (float)data / (float)pow(2, 10);
								b = b + 2;
							}
						}
						else
						{
							data=1;
						}
					}
					else
					{
						data=1;
						if (c < 16)
						{
							data1[0][i * 32 + (31 - a)][h][w] = (float)data / (float)pow(2, 10);
							a+=2;
						}
						else
						{
							data1[0][i * 32 + (31 - b)][h][w] = (float)data / (float)pow(2, 10);
							b += 2;
						}
					}
				}
			}
		}
	}
	for (int a = 0; a < 255; a++)
	{
		for (int b = 0; b < 8; b++)
		{
			for (int c = 0; c < 8; c++)
			{
				blob1.data[a * 64 + b * 8 + c] = data1[0][a][b][c];
				//data4[a * 64 + b * 8 + c] = data3[0][a][b][c];
				count1++;
			}
		}
	}




	for (int i = 0; i < 8; i++)
	{
		for (int h = 0; h < 16; h++)
		{
			for (int w = 0; w < 16; w++)
			{
				a = 0;
				b = 1;
				for (int c = 0; c < 32; c++)
				{
					if (i == 7)
					{
						if (c != 0)
						{
							data=1;
							if (c < 16)
							{
								a = a + 2;
								data2[0][i * 32 + (31 - a)][h][w] = (float)data / (float)pow(2, 10);
							}
							else
							{
								data2[0][i * 32 + (31 - b)][h][w] = (float)data / (float)pow(2, 10);
								b = b + 2;
							}
						}
						else
						{
							data=1;

						}
					}
					else
					{
						data=1;
						if (c < 16)
						{
							data2[0][i * 32 + (31 - a)][h][w] = (float)data / (float)pow(2, 10);
							a += 2;
						}
						else
						{
							data2[0][i * 32 + (31 - b)][h][w] = (float)data / (float)pow(2, 10);
							b += 2;
						}
					}
				}
			}
		}
	}

	for (int a = 0; a < 255; a++)
	{
		for (int b = 0; b < 16; b++)
		{
			for (int c = 0; c < 16; c++)
			{
				blob2.data[a * 256 + b * 16 + c] = data2[0][a][b][c];
				count2++;
			}
		}
	}
	int nboxes = 0;
	int im_w = 768;
	int im_h = 576;
	detection *dets = get_detections(blob1, blob2, im_w, im_h, &nboxes);




	int i, j;
	for (i = 0; i < nboxes; ++i) {
		char labelstr[4096] = { 0 };
		int cls = -1;
		for (j = 0; j < 80; ++j) {//80 3 1
			if (dets[i].prob[j] > 0.5) {
				if (cls < 0) {
					cls = j;
				}
				printf("%d: %.0f%%\n", cls, dets[i].prob[j] * 100);
			}
		}
		if (cls >= 0) {
			box b = dets[i].bbox;
			int left = (b.x - b.w / 2.)*im_w;
			int right = (b.x + b.w / 2.)*im_w;
			int top = (b.y - b.h / 2.)*im_h;
			int bot = (b.y + b.h / 2.)*im_h;
			if (left < 0) left = 0;
			if (right > im_w - 1) right = im_w - 1;
			if (top < 0) top = 0;
			if (bot > im_h - 1) bot = im_h - 1;
			printf("x = %f,y =  %f,w = %f,h =  %f\n", b.x, b.y, b.w, b.h);
			printf("left = %d,right =  %d,top = %d,bot =  %d\n", left, right, top, bot);

		}
	}
*/
	return 0;

}

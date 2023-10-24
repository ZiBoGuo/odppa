
/*
 * Company:	Systhesis
 * Author: 	Chen
 * Date:	2018/06/04
 */

#ifndef __YOLO_LAYER_H_
#define __YOLO_LAYER_H_
#include <vector>

#define  LONG 65536


typedef struct
{
	int num;
	int channel;
	int width;
	int height;
	float data[LONG];
}Blob;


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

layer make_yolo_layer(int batch, int w, int h, int n, int total, int classes);

void free_yolo_layer(layer l);

void forward_yolo_layer(const float* input, layer l);

detection* get_detections(vector<Blob> blobs, int img_w, int img_h, int* nboxes);

void free_detections(detection *dets, int nboxes);




#endif


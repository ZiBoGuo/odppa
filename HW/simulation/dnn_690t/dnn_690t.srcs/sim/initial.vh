
reg 					initial_done;
initial begin
	initial_done = 0;

	wait(ddr_user_300mhz_rst==0);

	axi_write_data_task(36'h1_000B_0000,65536,0);//fmap
	axi_write_data_task(36'h0_EF00_0000,276606,1);//weight 9*32=288 1*32*32=1024

	@(posedge ddr_user_150mhz_clk);
	initial_done = 1;
	@(posedge ddr_user_150mhz_clk);
	initial_done = 1;
	@(posedge ddr_user_150mhz_clk);
	initial_done = 0;

end


/*
reg 					initial_done;

reg	[31:0]				VLIW_num; //VLIW的个数
reg	[1023:0]			VLIW_mem[3:0];  //一条超长指令

wire[1023:0]			VLIW;
wire[31:0]				read_VLIW_addr;

reg [1023:0] instr1 =  {521'd0,
						1'd1,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd4,   //row
					    10'd4,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd1,
						1'd1,1'd1,
						36'd864,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd864,36'h1_0400_0000,36'h0_EF00_0000,1'd1,
						36'd16,36'h1_0000_0000,1'd1,1'd1,
						36'd16,36'h1_0000_0000,36'h0_0000_0000,1'd1
						};
reg [1023:0] instr2 =  {523'd0,
						5'd9, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd0,
						36'd864,36'h1_0400_0000,1'd0,1'd1,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr3 =  {523'd0,
						5'd18, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd0,
						36'd864,36'h1_0400_0000,1'd0,1'd1,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr4 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd0,
						36'd288,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd288,36'h1_0400_0000,36'h0_EF00_D800,1'd1,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr5 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0000_0000,1'h1,
						8'h00,1'd1,
						1'd1,1'd1,
						36'd864,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd864,36'h1_0400_0000,36'h0_EF01_2000,1'd1,
						36'd1024,36'h1_0000_0000,1'd1,1'd1,
						36'd1024,36'h1_0000_0000,36'h0_0001_0000,1'd1
						};
reg [1023:0] instr6 =  {523'd0,
						5'd9, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0001_0000,1'h1,
						8'h01,1'd1,
						1'd1,1'd1,
						36'd864,36'h1_0400_0000,1'd0,1'd1,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr7 =  {523'd0,
						5'd18, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0002_0000,1'h1,
						8'h02,1'd1,
						1'd1,1'd1,
						36'd864,36'h1_0400_0000,1'd0,1'd1,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr8 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0003_0000,1'h1,
						8'h03,1'd1,
						1'd1,1'd1,
						36'd288,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd288,36'h1_0400_0000,36'h0_EF01_B000,1'd1,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};


	//1x1					
reg [1023:0] instr9 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd0,
						36'd64,36'h1_0400_0000,1'd1,1'd1,    
						36'd64,36'h1_0400_0000,36'h0_EF02_4000,1'd1,
						36'd1024,36'h1_0000_0000,1'd1,1'd1,
						36'd1024,36'h1_0000_0000,36'h0_0000_0000,1'd1
						};
reg [1023:0] instr10 = {523'd0,
						5'd1, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd0,
						36'd64,36'h1_0400_0000,1'd0,1'd1,    
						36'd0,36'h0,36'h0,1'd0,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr11 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd1,
						36'd64,36'h1_0400_0000,1'd1,1'd1,    
						36'd64,36'h1_0400_0000,36'h0_EF02_5000,1'd1,
						36'd1024,36'h1_0000_0000,1'd1,1'd1,
						36'd1024,36'h1_0000_0000,36'h0_0001_0000,1'd1
						};
reg [1023:0] instr12 =  {523'd0,
						5'd1, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd1,
						36'd64,36'h1_0400_0000,1'd0,1'd1,    
						36'd0,36'h0,36'h0,1'd1,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr13 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd1,
						36'd64,36'h1_0400_0000,1'd1,1'd1,    
						36'd64,36'h1_0400_0000,36'h0_EF02_6000,1'd1,
						36'd1024,36'h1_0000_0000,1'd1,1'd1,
						36'd1024,36'h1_0000_0000,36'h0_0002_0000,1'd1
						};
reg [1023:0] instr14 =  {523'd0,
						5'd1, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd1,
						36'd64,36'h1_0400_0000,1'd0,1'd1,    
						36'd0,36'h0,36'h0,1'd1,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr15 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0000_0000,1'h0,
						8'h04,1'd1,
						1'd1,1'd1,
						36'd64,36'h1_0400_0000,1'd1,1'd1,    
						36'd64,36'h1_0400_0000,36'h0_EF02_7000,1'd1,
						36'd1024,36'h1_0000_0000,1'd1,1'd1,
						36'd1024,36'h1_0000_0000,36'h0_0003_0000,1'd1
						};
reg [1023:0] instr16 =  {523'd0,
						5'd1, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0001_0000,1'h0,
						8'h05,1'd1,
						1'd1,1'd1,
						36'd64,36'h1_0400_0000,1'd0,1'd1,    
						36'd0,36'h0,36'h0,1'd1,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};




assign 			VLIW 	= 	VLIW_mem[read_VLIW_addr];

initial begin
	initial_done = 0;
	VLIW_num 	 = 1;
	VLIW_mem[0]  = instr1;
	VLIW_mem[1]	 = instr2;
	//VLIW_mem[2]	 = instr3;
	//VLIW_mem[3]	 = instr4;


	wait(ddr_user_300mhz_rst==0);

	axi_write_data_task(36'h0_0000_0000,1024);//fmap
	axi_write_data_task(36'h0_EF00_0000,864);//weight 9*32*3=864 1*32*32=1024
	axi_write_data_task(36'h0_0000_8000,512);//psum 
	axi_write_data_task(36'h1_0600_0000,256);//bias 


	@(posedge ddr_user_150mhz_clk);
	initial_done = 1;
	@(posedge ddr_user_150mhz_clk);
	initial_done = 0;

end*/



//reg 					initial_done;

//reg	[31:0]				VLIW_num; //VLIW的个数
//reg	[1023:0]			VLIW_mem[23:0];  //一条超长指令

//wire[1023:0]			VLIW;
//wire[31:0]				read_VLIW_addr;



/*reg [1023:0] instr1 =  1024'b1000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000001000000000000110001000000000000000000000000000000000000000000000000000000010000000000001000011101111000000000000000000000000000100000100000000000000000000000000000000000000000000000000001001000000110001000001000000000000000000000000000000000000000000000000000010010000000110000001010001000000000000000000000000000000000000000000000000000000000100000000000000000001100011111000100000000010000000110011000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
						;
						
reg [1023:0] instr2 =  1024'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100001000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000001110001000000000000000100000000000000000000000000000000000000000100000000000000000001100011111000100000000010000000110011010011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
						;

reg [1023:0] instr3 =  1024'b1000100000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000010000000000110001000000000000000000000000000000000000000000000000000000000100000000001000011101111000000000000000000000000000100000100000000000000000000000000000000000000000000000000001101100000110001000001000000000000000000000000000000000000000000000000000011011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000011111000010000000001000000110011000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
						;


*/
















/*reg [1023:0] instr1 =  {521'd0,
						1'd0,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd4,   //row
					    10'd4,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd0,//只写不读
						36'd864,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd864,36'h1_0400_0000,36'h0_EF00_0000,1'd1,
						36'd16,36'h1_0000_0000,1'd1,1'd1,
						36'd16,36'h1_0000_0000,36'h0_0000_0000,1'd1
						};
reg [1023:0] instr2 =  {521'd0,
						1'd0,
						1'd1,
						5'd9, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd4,   //row
					    10'd4,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd1,//又写又读
						36'd0,36'h0,1'd0,1'd0,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd16,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr3 =  {521'd0,
						1'd1,
						1'd1,
						5'd18, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd4,   //row
					    10'd4,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h1, //upsampling
						1'h1, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd16,36'h0_0000_0000,1'h1,
						8'h00,1'd1,
						1'd1,1'd1,//只读不写
						36'd0,36'h0,1'd0,1'd0,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd16,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr4 =  {521'd0,
						1'd0,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd4,   //row
					    10'd4,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd0,
						36'd288,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd288,36'h1_0400_0000,36'h0_EF00_0000,1'd1,
						36'd16,36'h1_0000_0000,1'd1,1'd1,
						36'd16,36'h1_0000_0000,36'h0_0000_0000,1'd1
						};
*/

//1203_conv5


/*reg [1023:0] instr1 =  {521'd0,
						1'd1,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd64,   //row
					    10'd64,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'h00,1'd0,//量化
						36'd1024,36'h1_0004_0000,1'h1,
						8'h03,1'd1,
						1'd0,1'd1,//不写不读
						36'd576,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd576,36'h1_0400_0000,36'h0_EF00_0000,1'd1,
						36'd4096,36'h1_0000_0000,1'd1,1'd1,
						36'd4096,36'h1_0000_0000,36'h0_0000_0000,1'd1
						};
reg [1023:0] instr2 =  {521'd0,
						1'd1,
						1'd1,
						5'd9, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd64,   //row
					    10'd64,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'h00,1'd0,//量化
						36'd1024,36'h1_0005_0000,1'h1,
						8'h04,1'd1,
						1'd0,1'd1,//不写不读
						36'd0,36'h0,1'd0,1'd0,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd4096,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};

reg [1023:0] instr3 =  {521'd0,
						1'd1,
						1'd1,
						5'd18, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd4,   //row
					    10'd4,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h1, //upsampling
						1'h1, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						//36'd32,36'h0_0000_FFFF,1'h0,
						8'h00,1'd1,
						1'd1,1'd1,//只读不写
						36'd0,36'h0,1'd0,1'd0,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd1024,36'h1_0004_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};*/


//1203_conv5


//1205_16x16

/*reg [1023:0] instr1 =  {521'd0,
						1'd1,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'd012,1'd1,//量化
						36'd256,36'h1_0004_0000,1'h1,
						8'h01,1'd1,
						1'd1,1'd0,//不写不读
						36'd288,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd288,36'h1_0400_0000,36'h0_EF00_0000,1'd1,
						36'd256,36'h1_0000_0000,1'd1,1'd1,
						36'd256,36'h1_0000_0000,36'h0_0000_0000,1'd1
						};
						
reg [1023:0] instr2 =  {521'd0,
						1'd1,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'h00,1'd0,//量化
						36'd256,36'h1_0005_0000,1'h1,
						8'h04,1'd1,
						1'd0,1'd1,//不写不读
						36'd0,36'h0,1'd0,1'd0,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd256,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};

reg [1023:0] instr3 =  {521'd0,
						1'd1,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h1, //upsampling
						1'h1, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						//36'd32,36'h0_0000_FFFF,1'h0,
						8'h00,1'd1,
						1'd1,1'd1,//只读不写
						36'd0,36'h0,1'd0,1'd0,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd256,36'h1_0004_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};*/

//1205_16x16

/*
reg [1023:0] instr1 =  {519'd0,//第一层指令
                        1'd1,//first layer
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd34,   //row
					    10'd34,  //width
                        4'b0000, //pad控制符
                        2'd0, //pad
						1'h0, //upsampling
						1'h1, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd256,36'h1_0006_0000,1'h1,//写回
						8'h0,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd288,36'h1_0400_0000,1'd1,1'd1,    //288  
						36'd288,36'h1_0400_0000,36'h0_EF00_0000,1'd1,
						36'd1156,36'h1_0000_0000,1'd1,1'd1,
						36'd1156,36'h1_0000_0000,36'h0_0000_0000,1'd1
						};

reg [1023:0] instr2 =  {519'd0,//第二层 第一条
                        1'd0,//first layer
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h1, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd64,36'h1_0000_0000,1'h1,//写回
						8'h0,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd864,36'h1_0400_0000,1'd1,1'd1,    //288  
						36'd864,36'h1_0400_0000,36'h0_EF00_4800,1'd1,
						36'd256,36'h1_0006_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr3 =  {519'd0,//第二层 第二条
                        1'd0,//first layer
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd9, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h1, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd64,36'h1_0000_1000,1'h1,//写回
						8'h1,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd256,36'h1_0006_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr4 =  {519'd0,//第二层 第三条
                        1'd0,//first layer
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd18, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h1, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd64,36'h1_0000_2000,1'h1,//写回
						8'h0,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd256,36'h1_0006_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr5 =  {519'd0,//第三层 第一条
                        1'd0,//first layer
						1'd0,//another pad
						1'd0,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h1, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd0,36'h0,1'h0,//写回
						8'h0,1'd0,//bias
						1'd0,1'd0,//写入psum还是bias，是否读psum
						36'd288,36'h1_0400_0000,1'd1,1'd1,    //288  
						36'd288,36'h1_0400_0000,36'h0_EF01_2000,1'd1,
						36'd64,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr6 =  {519'd0,//第三层 第二条
                        1'd0,//first layer
						1'd0,//another pad
						1'd0,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h1, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd0,36'h0,1'h0,//写回
						8'h0,1'd0,//bias
						1'd0,1'd1,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd64,36'h1_0000_1000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr7 =  {519'd0,//第三层 第三条
                        1'd0,//first layer
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h1, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd64,36'h1_0006_0000,1'h1,//写回
						8'h0,1'd1,//bias
						1'd1,1'd1,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd64,36'h1_0000_2000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr8 =  {519'd0,//第四层 第一条
                        1'd0,//first layer
						1'd1,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd64,36'h1_0000_0000,1'h1,//写回
						8'h0,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd288,36'h1_0400_0000,1'd1,1'd1,    //288  
						36'd288,36'h1_0400_0000,36'h0_EF01_6800,1'd1,
						36'd64,36'h1_0006_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr9 =  {519'd0,//第五层 第一条
                        1'd0,//first layer
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd1,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b0000, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd64,36'h1_0006_0000,1'h1,//写回
						8'h0,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd96,36'h1_0400_0000,1'd1,1'd1,    //288  
						36'd96,36'h1_0400_0000,36'h0_EF01_B000,1'd1,
						36'd64,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr10 =  {519'd0,//第五层 第二条
                        1'd0,//first layer
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd1, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd1,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b0000, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd64,36'h1_0006_1000,1'h1,//写回
						8'h1,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd64,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr11 =  {519'd0,//第五层 第三条
                        1'd0,//first layer
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd2, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd1,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b0000, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd64,36'h1_0006_2000,1'h1,//写回
						8'h2,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd64,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr12 =  {519'd0,//第六层 第一条
                        1'd0,//first layer
						1'd0,//another pad
						1'd0,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd1,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b0000, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd0,36'h0,1'h0,//写回
						8'h0,1'd0,//bias
						1'd0,1'd0,//写入psum还是bias，是否读psum
						36'd32,36'h1_0400_0000,1'd1,1'd1,    //288  
						36'd32,36'h1_0400_0000,36'h0_EF01_C800,1'd1,
						36'd64,36'h1_0006_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr13 =  {519'd0,//第六层 第二条
                        1'd0,//first layer
						1'd0,//another pad
						1'd0,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd1,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b0000, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd0,36'h0,1'h0,//写回
						8'h0,1'd0,//bias
						1'd0,1'd1,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd64,36'h1_0006_1000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr14 =  {519'd0,//第六层 第三条
                        1'd0,//first layer
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd1,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b0000, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd64,36'h1_000C_0000,1'h1,//写回
						8'h0,1'd1,//bias
						1'd1,1'd1,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd64,36'h1_0006_2000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr15 =  {519'd0,//第七层 第一条
                        1'd0,//first layer
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd1,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b0000, //pad控制符
                        2'd1, //pad
						1'h1, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd256,36'h1_000D_0000,1'h1,//写回
						8'h0,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd32,36'h1_0400_0000,1'd1,1'd1,    //288  
						36'd32,36'h1_0400_0000,36'h0_EF01_D000,1'd1,
						36'd64,36'h1_000C_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr16 =  {519'd0,//第八层 第一条
                        1'd0,//first lay1er
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd1,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b0000, //pad控制符
                        2'd1, //pad
						1'h1, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd256,36'h1_000E_0000,1'h1,//写回
						8'h0,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd96,36'h1_0400_0000,1'd1,1'd1,    //288  
						36'd96,36'h1_0400_0000,36'h0_EF01_D800,1'd1,
						36'd64,36'h1_000C_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr17 =  {519'd0,//第八层 第二条
                        1'd0,//first lay1er
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd1, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd1,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b0000, //pad控制符
                        2'd1, //pad
						1'h1, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd256,36'h1_000E_4000,1'h1,//写回
						8'h1,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd64,36'h1_000C_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr18 =  {519'd0,//第八层 第二条
                        1'd0,//first lay1er
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd2, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd1,  //kernel_size
                        10'd8,   //row
					    10'd8,  //width
                        4'b0000, //pad控制符
                        2'd1, //pad
						1'h1, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd256,36'h1_000E_8000,1'h1,//写回
						8'h2,1'd1,//bias
						1'd1,1'd0,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd64,36'h1_000C_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr19 =  {519'd0,//第九层 第一条
                        1'd0,//first lay1er
						1'd0,//another pad
						1'd0,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd0,36'h0,1'h0,//写回
						8'h0,1'd0,//bias
						1'd0,1'd0,//写入psum还是bias，是否读psum
						36'd288,36'h1_0400_0000,1'd1,1'd1,    //288  
						36'd288,36'h1_0400_0000,36'h0_EF01_F000,1'd1,
						36'd256,36'h1_000D_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr20 =  {519'd0,//第九层 第二条
                        1'd0,//first lay1er
						1'd0,//another pad
						1'd0,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd0,36'h0,1'h0,//写回
						8'h0,1'd0,//bias
						1'd0,1'd1,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd256,36'h1_000E_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr21 =  {519'd0,//第九层 第三条
                        1'd0,//first lay1er
						1'd0,//another pad
						1'd0,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd0,36'h0,1'h0,//写回
						8'h0,1'd0,//bias
						1'd0,1'd1,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd256,36'h1_000E_4000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr22 =  {519'd0,//第九层 第四条
                        1'd0,//first lay1er
						1'd0,//another pad
						1'd1,//bias工作使能
						1'd1,//psum工作使能
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd256,36'h0_FF00_0000,1'h1,//写回
						8'h0,1'd1,//bias
						1'd1,1'd1,//写入psum还是bias，是否读psum
						36'd0,36'h0,1'd0,1'd0,    //288  
						36'd0,36'h0,36'h0,1'd0,
						36'd256,36'h1_000E_8000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
//1210 16x16_psum
/*2272
reg [1023:0] instr1 =  {521'd0,
						1'd0,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd0,36'h0,1'h0,
						8'h1,1'd0,
						1'd0,1'd0,//只写不读
						36'd864,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd864,36'h1_0400_0000,36'h0_EF00_0000,1'd1,
						36'd256,36'h1_0000_0000,1'd1,1'd1,
						36'd768,36'h1_0000_0000,36'h0_0000_0000,1'd1
						};
						
reg [1023:0] instr2 =  {521'd0,
						1'd0,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,//量化
						36'd0,36'h0,1'h0,
						8'h04,1'd0,
						1'd0,1'd1,//又写又读
						36'd0,36'h0,1'd0,1'd0,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd256,36'h1_0000_4000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};

reg [1023:0] instr3 =  {521'd0,
						1'd1,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd16,   //row
					    10'd16,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h1, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'd16,1'd1,
						36'd1024,36'h1_0006_0000,1'h1,
						//36'd32,36'h0_0000_FFFF,1'h0,
						8'h00,1'd1,
						1'd1,1'd1,//只读不写
						36'd0,36'h0,1'd0,1'd0,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd256,36'h1_0000_8000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
*/
 //1210 16x16_psum























/*reg [1023:0] instr4 =  {521'd0,
						1'd0,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd4,   //row
					    10'd4,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd0,//只写不读
						36'd864,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd864,36'h1_0400_0000,36'h0_EF00_0000,1'd1,
						36'd32,36'h1_0000_0000,1'd1,1'd1,
						36'd32,36'h1_0000_0000,36'H0_0000_FFFF,1'd1
						};*/

/*reg [1023:0] instr4 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd0,
						36'd288,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd288,36'h1_0400_0000,36'h0_EF00_D800,1'd1,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr5 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0000_0000,1'h1,
						8'h00,1'd1,
						1'd1,1'd1,
						36'd864,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd864,36'h1_0400_0000,36'h0_EF01_2000,1'd1,
						36'd1024,36'h1_0000_0000,1'd1,1'd1,
						36'd1024,36'h1_0000_0000,36'h0_0001_0000,1'd1
						};
reg [1023:0] instr6 =  {523'd0,
						5'd9, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0001_0000,1'h1,
						8'h01,1'd1,
						1'd1,1'd1,
						36'd864,36'h1_0400_0000,1'd0,1'd1,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr7 =  {523'd0,
						5'd18, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0002_0000,1'h1,
						8'h02,1'd1,
						1'd1,1'd1,
						36'd864,36'h1_0400_0000,1'd0,1'd1,    //864  1024
						36'd0,36'h0,36'h0,1'd0,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr8 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0003_0000,1'h1,
						8'h03,1'd1,
						1'd1,1'd1,
						36'd288,36'h1_0400_0000,1'd1,1'd1,    //864  1024
						36'd288,36'h1_0400_0000,36'h0_EF01_B000,1'd1,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};*/

/*
	//1x1					
reg [1023:0] instr4 =  {521'd0,
						1'd0,
						1'd1,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd4,   //row
					    10'd4,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h1, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd0,//只写不读
						36'd96,36'h1_0400_0000,1'd1,1'd1,    
						36'd96,36'h1_0400_0000,36'h0_EF00_0000,1'd1,
						36'd16,36'h1_0000_0000,1'd1,1'd1,
						36'd16,36'h1_0000_0000,36'h0_0000_0000,1'd1
						};
reg [1023:0] instr5 =  {521'd0,
						1'd0,
						1'd1,
						5'd1, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd4,   //row
					    10'd4,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd1,//又读又写
						36'd0,36'h0,1'd0,1'd0,    
						36'd0,36'h0,36'h0,1'd0,
						36'd16,36'h1_0000_0000,1'd1,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr6 =  {521'd0,
						1'd1,
						1'd1,
						5'd2, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd4,   //row
					    10'd4,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd1,
						1'd1,1'd1,//只读不写
						36'd0,36'h0,1'd0,1'd0,    
						36'd0,36'h0,36'h0,1'd0,
						36'd16,36'h1_0000_0000,1'd1,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};*/
/*reg [1023:0] instr12 =  {523'd0,
						5'd1, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd1,
						36'd64,36'h1_0400_0000,1'd0,1'd1,    
						36'd0,36'h0,36'h0,1'd1,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr13 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd1,
						36'd64,36'h1_0400_0000,1'd1,1'd1,    
						36'd64,36'h1_0400_0000,36'h0_EF02_6000,1'd1,
						36'd1024,36'h1_0000_0000,1'd1,1'd1,
						36'd1024,36'h1_0000_0000,36'h0_0002_0000,1'd1
						};
reg [1023:0] instr14 =  {523'd0,
						5'd1, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd0,36'h0,1'h0,
						8'h00,1'd0,
						1'd0,1'd1,
						36'd64,36'h1_0400_0000,1'd0,1'd1,    
						36'd0,36'h0,36'h0,1'd1,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
reg [1023:0] instr15 =  {523'd0,
						5'd0, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0000_0000,1'h0,
						8'h04,1'd1,
						1'd1,1'd1,
						36'd64,36'h1_0400_0000,1'd1,1'd1,    
						36'd64,36'h1_0400_0000,36'h0_EF02_7000,1'd1,
						36'd1024,36'h1_0000_0000,1'd1,1'd1,
						36'd1024,36'h1_0000_0000,36'h0_0003_0000,1'd1
						};
reg [1023:0] instr16 =  {523'd0,
						5'd1, //weight_rd_addr_cmd_base
                        1'd1,//fmapcache
                        3'd1, //stride
                        3'd3,  //kernel_size
                        10'd32,   //row
					    10'd32,  //width
                        4'b1111, //pad控制符
                        2'd1, //pad
						1'h0, //upsampling
						1'h0, //pooling步长
						1'h0, //pooling
						1'h1, //total
						8'h00,1'd0,
						36'd1024,36'h0_0001_0000,1'h0,
						8'h05,1'd1,
						1'd1,1'd1,
						36'd64,36'h1_0400_0000,1'd0,1'd1,    
						36'd0,36'h0,36'h0,1'd1,
						36'd1024,36'h1_0000_0000,1'd0,1'd1,
						36'd0,36'h0,36'h0,1'd0
						};
*/



//assign 			VLIW 	= 	VLIW_mem[read_VLIW_addr];
//4/2
//reg 					initial_done;
//initial begin
	//initial_done = 0;
	/*VLIW_num 	 = 22;
	VLIW_mem[0]  = instr1;
    VLIW_mem[1]  = instr2;
    VLIW_mem[2]  = instr3;
    VLIW_mem[3]  = instr4;
    VLIW_mem[4]  = instr5;
    VLIW_mem[5]  = instr6;
    VLIW_mem[6]  = instr7;
    VLIW_mem[7]  = instr8;
    VLIW_mem[8]  = instr9;
    VLIW_mem[9]  = instr10;
    VLIW_mem[10]  = instr11;
    VLIW_mem[11]  = instr12;
    VLIW_mem[12]  = instr13;
    VLIW_mem[13]  = instr14;
    VLIW_mem[14]  = instr15;
    VLIW_mem[15]  = instr16;
    VLIW_mem[16]  = instr17;
    VLIW_mem[17]  = instr18;
    VLIW_mem[18]  = instr19;
    VLIW_mem[19]  = instr20;
    VLIW_mem[20]  = instr21;
    VLIW_mem[21]  = instr22;
	/*VLIW_mem[1]	 = instr2;
	VLIW_mem[2]	 = instr3;
	VLIW_mem[3]	 = instr4;
	VLIW_mem[4]	 = instr5;
	VLIW_mem[5]	 = instr6;	*/

/*
	wait(ddr_user_300mhz_rst==0);

	axi_write_data_task(36'h1_000B_0000,65536,0);//fmap
	axi_write_data_task(36'h0_EF00_0000,276606,1);//weight 9*32=288 1*32*32=1024
	//axi_write_data_task(36'h0_0000_8000,512);//psum 
	//axi_write_data_task(36'h1_0600_0000,256);//bias 


	@(posedge ddr_user_150mhz_clk);
	initial_done = 1;
	@(posedge ddr_user_150mhz_clk);
	initial_done = 1;
	@(posedge ddr_user_150mhz_clk);
	initial_done = 0;

end*/
/***********************
***initial interface****
***********************/
// Slave Interface Write Address Ports
reg  [35:0]							s_axi_initial_interface_awaddr;
reg  [7:0]							s_axi_initial_interface_awlen;
wire [0:0]							s_axi_initial_interface_awready;
reg  [2:0]							s_axi_initial_interface_awsize = 3'b110; 
reg  [0:0]							s_axi_initial_interface_awvalid;
wire [1:0]							s_axi_initial_interface_awburst = 2'b01;
				
// Slave Interface Write Data Ports
reg [C_AXI_DATA_WIDTH-1:0]			s_axi_initial_interface_wdata;
reg [0:0]							s_axi_initial_interface_wlast;
wire [0:0]							s_axi_initial_interface_wready;
reg [63:0]							s_axi_initial_interface_wstrb = {64{8'hFF}};
reg [0:0]							s_axi_initial_interface_wvalid;

// Slave Interface Write Response Ports
reg  [0:0]							s_axi_initial_interface_bready;
wire [0:0]							s_axi_initial_interface_bvalid;

reg [31:0]							write_len;
reg [7:0]							count;
reg [31:0]	                        count_r;
reg [511:0]							data;
reg [511:0]             			data_src_mem_fmap[0:65537];
reg [511:0]                         data_src_mem_weight[0:276607];
integer 							i;

initial begin
	s_axi_initial_interface_awvalid = 1'b0;
	s_axi_initial_interface_awsize 	= 3'b110;
	s_axi_initial_interface_awlen 	= 63;
	s_axi_initial_interface_wvalid 	= 0;
	s_axi_initial_interface_bready	= 1;
	s_axi_initial_interface_wstrb	= {64{8'hFF}};
	s_axi_initial_interface_wlast	= 1'b0;
	write_len = 0;
	count = 0;
	count_r = 0;
	data = 0;
	$readmemh("H:\\DNN\\dnn_690t_0429\\dnn_690t0420\\test.dat", data_src_mem_weight);
	$readmemh("H:\\DNN\\dnn_690t_0429\\dnn_690t0420\\test.dat", data_src_mem_fmap);

	wait(ddr_user_300mhz_rst==0);
end
	

task axi_write_data_task(
	input  [35:0]		base_addr,
	input  [35:0]		length,
	input               flag
	);
	
	begin 

		s_axi_initial_interface_awvalid = 1'b0;
		s_axi_initial_interface_awlen 	= 63;
		
		s_axi_initial_interface_bready	= 1;

		s_axi_initial_interface_wlast	= 1'b0;
		s_axi_initial_interface_wvalid 	= 0;
		s_axi_initial_interface_wdata = {C_AXI_DATA_WIDTH{1'd0}};

		count = 0;
		count_r = 0;
		//data = 1;
		//修改从1 开始
		/*data = {16'd32,16'd31,16'd30,16'd29,16'd28,16'd27,16'd26,16'd25,16'd24,16'd23,16'd22,16'd21,16'd20,
				16'd19,16'd18,16'd17,16'd16,16'd15,16'd14,16'd13,16'd12,16'd11,16'd10,
				16'd9,16'd8,16'd7,16'd6,16'd5,16'd4,16'd3,16'd2,16'd1
		};*/

		s_axi_initial_interface_awaddr 	= base_addr;
		write_len = length;

		repeat(10) @(posedge ddr_user_300mhz_clk);

		while(write_len > 0)begin
			@(posedge ddr_user_300mhz_clk);

			count = 0;
			//data = 1;

			if(write_len > 64)begin
				s_axi_initial_interface_awlen = 63;
				write_len = write_len - 64;
			end
			else begin
				s_axi_initial_interface_awlen = write_len - 1;
				write_len = 0;
			end

			s_axi_initial_interface_awvalid = 1'b1;
			wait(s_axi_initial_interface_awvalid & s_axi_initial_interface_awready);
			@(posedge ddr_user_300mhz_clk);
			s_axi_initial_interface_awvalid = 1'b0;
			s_axi_initial_interface_awaddr = s_axi_initial_interface_awaddr + (s_axi_initial_interface_awlen + 1) * 64;
			

			while(count < s_axi_initial_interface_awlen + 1)begin
				@(posedge ddr_user_300mhz_clk)

				#1; 
				s_axi_initial_interface_wvalid = 1'b1;

				wait(s_axi_initial_interface_wready);
				// for ( i = 0; i < C_AXI_DATA_WIDTH/16; i = i + 1) begin
				// 	s_axi_initial_interface_wdata[i*16 +: 16] = data + i;
				// end
				//data = data_src_mem_weight[count];
				//
				if(flag == 0)
				begin
					data = data_src_mem_fmap[count_r];
				end
				else if(flag == 1)
				begin
					data = data_src_mem_weight[count_r];
				end
				//data = data_src_mem_weight[count];
				s_axi_initial_interface_wdata = data;
				//data = data + /*C_AXI_DATA_WIDTH/16*/1;
				count = count + 1;
				count_r= count_r + 1;
				if(count == s_axi_initial_interface_awlen + 1)
					s_axi_initial_interface_wlast	= 1'b1;
				
			end

			@(posedge ddr_user_300mhz_clk);

			s_axi_initial_interface_wvalid = 1'b0;
			s_axi_initial_interface_wlast  = 1'b0;

		end
	end


endtask
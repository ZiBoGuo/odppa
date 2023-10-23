`timescale 1ps/100fs
//`timescale<时间单位>/<时间精度>
module tb_exponent;

localparam RESET_PERIOD = 200000; //in pSec 

parameter RST_ACT_LOW           = 0;
                                // =1 for active low reset,
                                // =0 for active high.
parameter CLKIN_PERIOD          = 10000;//10000ps=10ns
                                // Input Clock Period
reg                         sys_rst_n;
wire                        sys_rst;
reg                         sys_clk_i;
wire                        clk;
//**************************************************************************//

  //**************************************************************************//
  // Reset Generation
  //**************************************************************************//
  initial begin
    sys_rst_n = 1'b0;
    #RESET_PERIOD
      sys_rst_n = 1'b1;
   end

   assign sys_rst = RST_ACT_LOW ? sys_rst_n : ~sys_rst_n;

  //**************************************************************************//
  // Clock Generation
  //**************************************************************************//

  initial
    sys_clk_i = 1'b0;
  always
    sys_clk_i = #(CLKIN_PERIOD/2.0) ~sys_clk_i; //100MHz

  assign clk = sys_clk_i;

reg[15:0]  				     temp;
integer                      fp_r,count,fp_w;
wire [15:0]                        idata;
wire                         vaild;
reg                          vaild_r;
wire [15:0]		 odata;
wire               odata_vaild;
initial  
begin 
    fp_r=$fopen("C:\\Users\\ZiboGuo\\OneDrive\\FPT\\Experiment\\x_fix.txt","r");//以读的方式打开文件  
    fp_w=$fopen("C:\\Users\\ZiboGuo\\OneDrive\\FPT\\Experiment\\x_fix_exp.txt","w");
end 
always @(posedge clk) begin
	if (sys_rst) begin
		temp    <= 0;
		count   <= 0;
		vaild_r <= 0;
	end
	else begin
		if (count < 4097) begin
			$fscanf(fp_r,"%d" ,temp);
			count   <= count + 1;
			vaild_r <= 1;
		end
		else begin
			vaild_r <= 0;
			$fclose(fp_r);
		end
	end
end
always @(posedge clk) begin
	if (odata_vaild) begin
		$fwrite(fp_w,"%d ",$signed(odata));
	    $fwrite(fp_w,"\n");
	end
end
assign  idata = temp;
assign  vaild = vaild_r;

exponent uut_exponent(
	.clk(clk),
	.rst(sys_rst),
	.idata(idata),
	.idata_vaild(vaild),
	.odata(odata),
	.odata_vaild(odata_vaild)
    );
  

endmodule
`timescale 1ns/1ns
module testbench3 ();
	logic DD=0,cc=1;
	wire QQ;
	mydlatch MDL(.D(DD),.clk(cc),.Q(QQ));
	initial begin
	#50 DD=1;
	#20 cc=0;
	#80 cc=1;
	#50 DD=0;
	#20 DD=1;
	#40 cc=0;
	#10 cc=1;DD=0;
	#20 cc=0;
	#30 $stop;
	end
endmodule

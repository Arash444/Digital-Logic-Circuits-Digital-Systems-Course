`timescale 1ns/1ns
module testbench2 ();
	logic DD=0,cc=1;
	wire QQ;
	mydlatch MDL(.D(DD),.clk(cc),.Q(QQ));
	initial begin
	#50 cc=0;
	#50 DD=1;
	#50 cc=1; DD=1;
	#50 cc=0;
	#50 DD=0;
	#50 $stop;
	end
endmodule

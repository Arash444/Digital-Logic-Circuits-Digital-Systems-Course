`timescale 1ns/1ns
module testbench ();
	logic RESET=0,DD=1,CLK=1;
	wire QQ;
	myMSDFF MDS(.D(DD),.reset(RESET),.clk(CLK),.Q(QQ));
	initial begin
	#100 CLK=0;
	#50 CLK=1;RESET=1;
	#100 CLK=0;
	#50 RESET=0;
	#20 CLK=1;
	#20 CLK=0;
	#50 CLK=1;
	#50 CLK=0;DD=0;
	#50 CLK=1;
	#50 RESET=1;
	#20 CLK=0;
	#20 CLK=1;
	#10 RESET=0;
	#50 $stop;
	end
endmodule

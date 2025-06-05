`timescale 1ns/1ns
module testbench ();
	logic [7:0] aa = 8'b10100110, bb = 8'b10101001;
	logic ss=1, en=1;
	wire [7:0] ww;
	mymulti8 MMT(.a(aa),.b(bb),.s(ss),.EN(en),.w(ww));
	initial begin
	#50 ss=0;
	#50 en=0;
	#50 $stop;
	end
endmodule

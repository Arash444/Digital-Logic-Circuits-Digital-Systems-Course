`timescale 1ns/1ns
module testbench1 ();
	logic aa=1,bb=0,ss=0;
	wire ww;
	mymulti MMT(.a(aa),.b(bb),.s(ss),.w(ww));
	initial begin
	#50 aa=0;bb=1;
	#50 ss=1;
	#50 $stop;
	end
endmodule
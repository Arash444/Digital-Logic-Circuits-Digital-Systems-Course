`timescale 1ns/1ns
module testbench ();
	logic aa=1,bb=0,ss=0,en=1;
	wire ww;
	mymulti2 MMT(.a(aa),.b(bb),.s(ss),.EN(en),.w(ww));
	initial begin
	#50 ss=1;
	#50 en=0;
	#50 $stop;
	end
endmodule
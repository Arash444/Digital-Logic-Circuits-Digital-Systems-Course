`timescale 1ns/1ns
module testbench ();
	logic aa=1,bb=0,cc=0,dd=1,ss=0,en=0;
	wire ww;
	mymulti4 MMT(.a(aa),.b(bb),.c(cc),.d(dd),.s(ss),.EN(en),.w(ww));
	initial begin
	#50 ss=1;
	#50 en=1;
	#50 en=0;
	#50 $stop;
	end
endmodule

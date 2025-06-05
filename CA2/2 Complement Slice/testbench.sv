`timescale 1ns/1ns
module testbench ();
	logic aa=0,ff1=1;
	wire ww,ff2;
	my2comslice MCS(.a(aa),.f1(ff1),.f2(ff2),.w(ww));
	initial begin
	#50 aa=1;
	#50 ff1=0;
	#50 aa=0;
	#50 $stop;
	end
endmodule

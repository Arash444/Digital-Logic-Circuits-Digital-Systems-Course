`timescale 1ns/1ns
module mntb ();
	logic aa=0;
	wire ww;
	mynot uut(.a(aa),.w(ww));
	initial begin
	#15 aa=1;
	#15 aa=0;
	#15 aa=1;
	#15 $stop;
	end
endmodule

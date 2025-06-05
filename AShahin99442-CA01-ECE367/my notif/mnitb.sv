`timescale 1ns/1ns
module mnitb ();
	logic aa=0,en=1;
	wire ww;
	mynotif MNI(.a(aa),.EN(en),.w(ww));
	initial begin
	#20 aa=1;
	#20 aa=0;
	#25 en=0;aa=1;
	#25 $stop;
	end
endmodule

`timescale 1ns/1ns
module mnaftb ();
	logic aa=1,bb=0,en=1;
	wire ww;
	mynandif MNAT(.a(aa),.b(bb),.EN(en),.w(ww));
	initial begin
	#25 aa=0;en=0;
	#25 aa=1;bb=1;en=1;
	#25 $stop;
	end
endmodule

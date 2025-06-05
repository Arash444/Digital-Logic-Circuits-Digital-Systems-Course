`timescale 1ns/1ns
module gtb ();
	logic aa=0,bb=1,cc=1,dd=1;
	wire ww;
	gates AGT(.a(aa),.b(bb),.c(cc),.d(dd),.w(ww));
	initial begin
	#45 aa=1;
	#45 $stop;
	end
endmodule
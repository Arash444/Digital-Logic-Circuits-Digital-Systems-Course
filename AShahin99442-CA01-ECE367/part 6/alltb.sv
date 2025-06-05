`timescale 1ns/1ns
module alltb ();
	logic aa=0,bb=1,cc=1,dd=1;
	wire ww1,ww2,ww3;
	gates AGT(.a(aa),.b(bb),.c(cc),.d(dd),.w(ww1));
	gatesif AGIT(.a(aa),.b(bb),.c(cc),.d(dd),.w(ww2));
	mycmoss MCT(.a(aa),.b(bb),.c(cc),.d(dd),.w(ww3));
	initial begin
	#40 aa=1;
	#40 dd=0;
	#40 aa=0;bb=0;dd=1;
	#40 aa=1;bb=1;cc=0;dd=0;
	#40 dd=1;
	#40 $stop;
	end
endmodule

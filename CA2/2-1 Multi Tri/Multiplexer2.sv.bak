`timescale 1ns/1ns
module mymulti2 (input a,b,s,EN, output w);
	wire i,j;
	mynot N1(s,i);
	mynotif NT1(a,i,j);
	mynotif NT2(j,EN,w);
	mynotif NT3(b,s,j);

endmodule

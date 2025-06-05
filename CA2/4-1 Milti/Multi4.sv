`timescale 1ns/1ns
module mymulti4 (input a,b,c,d,s,EN, output w);
	wire i;
	mynot N1(EN,i);
	mymulti2 M1(a,b,s,i,w);
	mymulti2 M2(c,d,s,EN,w);

endmodule
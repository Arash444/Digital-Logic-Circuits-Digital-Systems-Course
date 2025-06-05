`timescale 1ns/1ns
module myabsolutevalue (input [7:0] a, input EN, output [7:0] w);
	wire [7:0] i;
	my2com TwoCom(a,i);
	mymulti8 Multi8(a,i,a[7],EN,w);
endmodule

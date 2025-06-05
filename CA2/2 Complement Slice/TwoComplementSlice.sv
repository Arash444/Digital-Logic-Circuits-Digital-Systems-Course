`timescale 1ns/1ns
module my2comslice (input a,f1, output w,f2);
	wire i,j;
	not #(7,9) N1(i,a);
	not #(7,9) N2(j,f1);
	nand #(14,10) NA1(f2,i,j);
	xor #(23,25) XR(w,a,f1);

endmodule

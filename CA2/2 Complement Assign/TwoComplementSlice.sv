`timescale 1ns/1ns
module my2comslice (input a,f1, output w,f2);
	wire k,j;
	not #(7,9) N1(k,a);
	not #(7,9) N2(j,f1);
	nand #(14,10) NA1(f2,k,j);
	xor #(23,25) XR(w,a,f1);

endmodule

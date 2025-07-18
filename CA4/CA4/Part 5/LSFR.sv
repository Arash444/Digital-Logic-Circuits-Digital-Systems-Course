`timescale 1ns/1ns
module LSFR (input syncInit,clk,reset, output [7:0] PO);
	wire Q8,x,y,z,w;
	xor #(23,25) X1(x,PO[0],PO[2]);
	xor #(23,25) X2(y,x,PO[5]);
	xor #(23,25) X3(z,y,PO[6]);
	or #(23,17) (Q8,z,syncInit);
	or #(23,17) (w,reset,syncInit);
	myMSDFF MMSDFF(Q8,reset,clk,PO[7]);
	genvar i;
	generate
	    for (i=7; i > 0; i=i-1) begin
	         myMSDFF MMSDFF(PO[i],w,clk,PO[i-1]);
	    end
	endgenerate
endmodule

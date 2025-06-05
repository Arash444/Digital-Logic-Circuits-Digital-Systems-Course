`timescale 1ns/1ns
module mymulti8 (input [7:0] a,b, input s,EN, output [7:0] w);
	genvar i;
	generate
	    for (i=0; i<8; i=i+1) begin
	         mymulti2 M(a[i], b[i], s, EN, w[i]);
	    end
	endgenerate
endmodule

`timescale 1ns/1ns
module my2com (input [7:0] a, output [7:0] w);
	wire f[0:8];
	assign f[0]=0;
	genvar i;
	generate
	    for (i=0; i<8; i=i+1) begin
	         my2comslice C(a[i], f[i], w[i], f[i+1]);
	    end
	endgenerate
endmodule

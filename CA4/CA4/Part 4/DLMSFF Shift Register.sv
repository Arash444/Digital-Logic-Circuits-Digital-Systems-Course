`timescale 1ns/1ns
module mydshift (input serIn,clk,reset, output [7:0] PO);
	wire [8:0] Q;
	assign Q[8] = serIn;
	genvar i;
	generate
	    for (i=8; i > 0; i=i-1) begin
	         myMSDFF MMSDFF(Q[i],reset,clk,Q[i-1]);
	    end
	endgenerate
	assign PO = Q[7:0];
endmodule

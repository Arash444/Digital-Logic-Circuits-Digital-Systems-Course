`timescale 1ns/1ns
module myabsolutassign (input [7:0] a, input EN, output [7:0] w);
	assign #218 w = EN ? (~a[7] ? a : (~a + 1'b1)) : 8'bz ;
endmodule

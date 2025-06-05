`timescale 1ns/1ns
module mydlatch(input D,clk, output Q);
	mymulti MT(Q,D,clk,Q);
endmodule

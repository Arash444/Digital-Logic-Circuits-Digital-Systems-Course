`timescale 1ns/1ns
module myMSDFF (input D,reset,clk, output Q);
	wire i,j;
	mymulti MT1(D,0,reset,i);
	mymulti MT2(j,i,clk,j);
	mymulti MT3(j,Q,clk,Q);
endmodule

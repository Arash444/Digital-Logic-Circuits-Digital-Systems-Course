`timescale 1ns/1ns
module testbench ();
	logic [7:0] aa = 8'b00000001;
	wire [7:0] ww;
	my2com MMT(.a(aa),.w(ww));
	initial begin
	#300 $stop;
	end
endmodule

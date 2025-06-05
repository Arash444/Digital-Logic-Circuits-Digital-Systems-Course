`timescale 1ns/1ns
module testbench ();
	logic [7:0] aa = 8'b00000001;
	wire [7:0] ww1,ww2;
	my2com MMT(.a(aa),.w(ww1));
	twocomassign TCA(.a(aa),.w(ww2));
	initial begin
	#300 aa = 8'b11111110;
	#300 $stop;
	end
endmodule
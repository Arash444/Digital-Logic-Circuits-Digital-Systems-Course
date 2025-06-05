`timescale 1ns/1ns
module testbench ();
	logic [7:0] aa = 8'b10000001;
	logic en = 1;
	wire [7:0] ww1,ww2;
	myabsolutevalue MAV(.a(aa),.EN(en),.w(ww1));
	myabsolutassign MAA(.a(aa),.EN(en),.w(ww2));
	initial begin 
	#300 aa = 8'b10111110;
	#300 aa = 8'b11000001;
	#300 $stop;
	end
endmodule

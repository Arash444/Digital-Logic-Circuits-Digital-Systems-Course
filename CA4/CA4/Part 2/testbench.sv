`timescale 1ns/1ns
module testbench ();
	logic SERIN=1,CLK=1;
	wire [7:0] po;
	mydshift MDS(.serIn(SERIN),.clk(CLK),.PO(po));
	initial begin
	#300 CLK=0;
	#50 CLK=1;SERIN=0;
	#300 CLK=0;
	#50 $stop;
	end
endmodule

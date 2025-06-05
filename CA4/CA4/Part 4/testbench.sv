`timescale 1ns/1ns
module testbench ();
	logic RESET=1,SERIN=1,CLK=1;
	wire [7:0] po;
	mydshift MDS(.serIn(SERIN),.reset(RESET),.clk(CLK),.PO(po));
	initial begin
	#100 CLK=0;
	#50 CLK=1;
	#50 RESET=0;
	#100 CLK=0;
	#50 CLK=1;
	#100 CLK=0;
	#50 SERIN=0;CLK=1;
	#100 CLK=0;
	#50 $stop;
	end
endmodule

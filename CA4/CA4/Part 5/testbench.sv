`timescale 1ns/1ns
module testbench2 ();
	logic RESET=1,SYNCINIT=0,CLK=1;
	wire [7:0] po;
	LSFR LSFRTB(.syncInit(SYNCINIT),.reset(RESET),.clk(CLK),.PO(po));
	initial begin
	#200 CLK=0;
	#150 RESET=0; 
	#150 CLK=1;
	#200 CLK=0; 
	#150 CLK=1;
	#200 CLK=0;
	#150 SYNCINIT=1; CLK=1;
	#200 CLK=0;
	#150 SYNCINIT=0; 
	#150 CLK=1;
	#200 CLK=0;
	#150 CLK=1;
	#200 CLK=0;
	#150 CLK=1;
	#200 CLK=0;
	#150 CLK=1;
	#200 CLK=0;
	#150 CLK=1;
	#200 CLK=0;
	#150 CLK=1;
	#200 CLK=0;
	#250 $stop;
	end
endmodule

`timescale 1ns/1ns
module testbench ();
	logic [15:0] INm,INn;
	logic [2:0] OPC;
	logic INc;
	wire [15:0] OUTf1,OUTf2;
	wire ZER1,NEG1,ZER2,NEG2;
	MyALU ALUB(INm,INn,OPC,INc,OUTf1,ZER1,NEG1);
	MyALU2 ALUB2(INm,INn,OPC,INc,OUTf2,ZER2,NEG2);
	initial begin
	INm = $random();
	INn = $random();
	INc = $random();
		for(int i=0;i<8;i=i+1) begin
			OPC = i;
			repeat(2) #100 begin
				INm = $random();
				INn = $random();
				INc = $random();
			end
		end
	$stop;
	end
endmodule

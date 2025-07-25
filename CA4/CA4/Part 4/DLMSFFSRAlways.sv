`timescale 1ns/1ns
module dshift (input serIn,clk,reset, output logic [7:0] PO);
	always #43 @ (negedge clk) begin
		if(reset)
			PO <= 8'b0;
		else
			PO <= {serIn, PO[7:1]};
	end
endmodule

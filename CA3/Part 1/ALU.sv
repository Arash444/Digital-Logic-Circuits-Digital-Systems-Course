module myALU(input signed [15:0] inM, inN, input [2:0] opc, input inC, output logic signed [15:0] outF, output zer, neg);
	always @ (inM,inN,opc,inC) begin
		outF = 16'b0;
		case(opc)
			3'b000: outF = inM + inN + inC;
			3'b001: outF = inM + (inN >>> 1);
			3'b010: outF = inM + 1;
			3'b011: outF = inM + (inM >>> 1);
			3'b100: outF = inM & inN;
			3'b101: outF = inM | inN;
			3'b110: outF = ~inM;
			3'b111: outF = 16'b0;
			default: outF = 16'b0;
		endcase
	end
	assign zer = ~|outF;
	assign neg = outF[15];
endmodule
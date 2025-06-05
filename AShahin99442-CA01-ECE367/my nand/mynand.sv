`timescale 1ns/1ns
module mynand (input a,b, output w);
	wire i;
	supply1 Vdd;
	supply0 Gnd;
	pmos #(4,7,9) T1(w,Vdd,a);
	pmos #(4,7,9) T2(w,Vdd,b);
	nmos #(3,5,7) T3(w,i,b);
	nmos #(3,5,7) T4(i,Gnd,a);

endmodule
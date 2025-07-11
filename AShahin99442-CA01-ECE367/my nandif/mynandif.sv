`timescale 1ns/1ns
module mynandif (input a,b,EN, output w);
	wire i,j,k,x;
	supply1 Vdd;
	supply0 Gnd;
	pmos #(4,7,9) T1(i,Vdd,b);
	pmos #(4,7,9) T2(i,Vdd,a);
	pmos #(4,7,9) T3(w,i,x);
	nmos #(3,5,7) T4(w,j,EN);
	nmos #(3,5,7) T5(j,k,a);
	nmos #(3,5,7) T6(k,Gnd,b);
	pmos #(4,7,9) T7(x,Vdd,EN);
	nmos #(3,5,7) T8(x,Gnd,EN);

endmodule

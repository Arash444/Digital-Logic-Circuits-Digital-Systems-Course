`timescale 1ns/1ns
module mycmoss (input a,b,c,d, output w);
	wire i,j,k,x,y,z;
	supply1 Vdd;
	supply0 Gnd;
	pmos #(4,7,9) T1(i,Vdd,k);
	pmos #(4,7,9) T2(j,Vdd,d);
	pmos #(4,7,9) T3(w,j,c);
	pmos #(4,7,9) T4(w,i,b);
	pmos #(4,7,9) T5(w,i,a);
	pmos #(4,7,9) T6(k,Vdd,d);
	nmos #(3,5,7) T7(k,Gnd,d);
	nmos #(3,5,7) T8(w,x,a);
	nmos #(3,5,7) T9(x,y,b);
	nmos #(3,5,7) T10(w,y,z);
	nmos #(3,5,7) T11(y,Gnd,c);
	nmos #(3,5,7) T12(y,Gnd,d);
	pmos #(4,7,9) T13(z,Vdd,d);
	nmos #(3,5,7) T14(z,Gnd,d);

endmodule

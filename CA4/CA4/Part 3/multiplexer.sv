`timescale 1ns/1ns
module mymulti(input a,b,s, output w);
	wire i,j;
	not #(7,9) N1(i,s);
	notif1 #(14,18,16) NT1(j,a,i);
	notif1 #(14,18,16) NT2(j,b,s);
	notif1 #(14,18,16) NT3(w,j,1);
endmodule
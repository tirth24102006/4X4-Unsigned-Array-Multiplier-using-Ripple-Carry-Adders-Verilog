module rca(s,c,a,b,cin);
input [3:0]a,b;
input cin;
output [3:0]s;
output [3:0]c;
fulladder f1(s[0],c[0],a[0],b[0],cin);
fulladder f2(s[1],c[1],a[1],b[1],c[0]);
fulladder f3(s[2],c[2],a[2],b[2],c[1]);
fulladder f4(s[3],c[3],a[3],b[3],c[2]);
endmodule
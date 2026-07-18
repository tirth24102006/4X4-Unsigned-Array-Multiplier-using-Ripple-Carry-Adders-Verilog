`timescale 1ns / 1ps
module Ripple_carry_adder;
reg [3:0]a,b;
reg cin;
wire [3:0]s,c;
rca ca(s,c,a,b,cin);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0, Ripple_carry_adder);
$monitor("at time %t: a=%b b=%b cin=%b | s=%b c=%b",$time,a,b,cin,s,c);
                cin=0;a=4'b0000;b=4'b0001;#10;
                cin=0;a=4'b0001;b=4'b0010;#10;
                cin=1;a=4'b0010;b=4'b0011;#10;
                cin=1;a=4'b0011;b=4'b0100;#10;
        $finish;
        end
endmodule
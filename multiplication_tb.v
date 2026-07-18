`timescale 1ns / 1ps
module multiplication_tb;
reg [3:0] a,b;
wire [7:0] out;
multiplication mul_1(a,b,out);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0, multiplication_tb);
$monitor("at time %t: a=%b b=%b out=%b",$time,a,b,out);
                a=4'b0000; b=4'b0000; #10;
                a=4'b0001; b=4'b0010; #10;
                a=4'b0100; b=4'b0110; #10;
                a=4'b1000; b=4'b0111; #10;
                a=4'b1111; b=4'b1111; #10;
        $finish;
end
endmodule
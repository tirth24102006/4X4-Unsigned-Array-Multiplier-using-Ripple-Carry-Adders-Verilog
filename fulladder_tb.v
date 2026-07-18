`timescale 1ns / 1ps
module fulladder_tb;
reg a,b,cin;
wire s,cout;
fulladder a1 (s,cout,a,b,cin);
initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,fulladder_tb);
        $monitor("at time %t : a=%b | b=%b | cin=%b | s=%b | cout=%b",$time,a,b,cin,s,cout);
                a = 1'b0; b = 1'b0; cin= 1'b0; #10;
                a = 1'b0; b = 1'b0; cin= 1'b1; #10;
                a = 1'b0; b = 1'b1; cin= 1'b0; #10;
                a = 1'b0; b = 1'b1; cin= 1'b1; #10;
                a = 1'b1; b = 1'b0; cin= 1'b0; #10;
                a = 1'b1; b = 1'b0; cin= 1'b1; #10;
                a = 1'b1; b = 1'b1; cin= 1'b0; #10;
                a = 1'b1; b = 1'b1; cin= 1'b1; #10;
        $finish;
end
endmodule
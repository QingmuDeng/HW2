// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    // behavioralFullAdder adder (sum, carryout, a, b, carryin);
    structuralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin
        a = 0; b = 0; carryin = 0; #100
        $dumpfile("adder.vcd");
        $dumpvars(0, adder);

        $display("Cin a  b | Cout  Sum | Expected Output");     // Header for the truth table for nAandnB
        a = 0; b = 0; carryin = 0; #1000
        $display(" %b  %b  %b |  %b     %b  |   0b00", carryin, a, b, carryout, sum);
        a = 0; b = 1; carryin = 0; #1000
        $display(" %b  %b  %b |  %b     %b  |   0b01", carryin, a, b, carryout, sum);
        a = 1; b = 0; carryin = 0; #1000
        $display(" %b  %b  %b |  %b     %b  |   0b01", carryin, a, b, carryout, sum);
        a = 1; b = 1; carryin = 0; #1000
        $display(" %b  %b  %b |  %b     %b  |   0b10", carryin, a, b, carryout, sum);
        a = 0; b = 0; carryin = 1; #1000
        $display(" %b  %b  %b |  %b     %b  |   0b01", carryin, a, b, carryout, sum);
        a = 0; b = 1; carryin = 1; #1000
        $display(" %b  %b  %b |  %b     %b  |   0b10", carryin, a, b, carryout, sum);
        a = 1; b = 0; carryin = 1; #1000
        $display(" %b  %b  %b |  %b     %b  |   0b10", carryin, a, b, carryout, sum);
        a = 1; b = 1; carryin = 1; #1000
        $display(" %b  %b  %b |  %b     %b  |   0b11", carryin, a, b, carryout, sum);
        
    end
endmodule

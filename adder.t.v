// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    behavioralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin

        $display("A B | ~A ~B | ~A~B");     // Header for the truth table for nAandnB
        A = 0; B = 0; #1
        $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAandnB);
        A = 0; B = 1; #1
        $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAandnB);
        A = 1; B = 0; #1
        $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAandnB);
        A = 1; B = 1; #1
        $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAandnB);

    end
endmodule

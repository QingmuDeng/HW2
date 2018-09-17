// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
    reg a0, a1, in0, in1, in2, in3;
    wire out;

    // behavioralMultiplexer mux(out, a0, a1, in0, in1, in2, in3);
    structuralMultiplexer mux(out, a0, a1, in0, in1, in2, in3);

    initial begin
      a0 = 0; a1 = 0; in0 = 0; in1 = 0; in2 = 0; in3 = 0; #100
      $dumpfile("mux.vcd");
      $dumpvars(0, mux);

      // initialize all to zero
      a0 = 0; a1 = 0; in0 = 0; in1 = 0; in2 = 0; in3 = 0; #1000
      $display("a0  a1  in0  in1  in2  in3  | out | Expected Output");
      // select in0
      a0 = 0; a1 = 0; in0 = 1; in1 = 0; in2 = 0; in3 = 0; #1000
      $display("%b    %b    %b    %b    %b    %b  |   %b | in0", a0, a1, in0, in1, in2, in3, out);
      a0 = 0; a1 = 0; in0 = 0; in1 = 1; in2 = 1; in3 = 1; #1000
      $display("%b    %b    %b    %b    %b    %b  |   %b | in0", a0, a1, in0, in1, in2, in3, out);
      // select in1
      a0 = 1; a1 = 0; in0 = 0; in1 = 1; in2 = 0; in3 = 0; #1000
      $display("%b    %b    %b    %b    %b    %b  |   %b | in1", a0, a1, in0, in1, in2, in3, out);
      a0 = 1; a1 = 0; in0 = 1; in1 = 0; in2 = 1; in3 = 1; #1000
      $display("%b    %b    %b    %b    %b    %b  |   %b | in1", a0, a1, in0, in1, in2, in3, out);
      // select in2
      a0 = 0; a1 = 1; in0 = 0; in1 = 0; in2 = 1; in3 = 0; #1000
      $display("%b    %b    %b    %b    %b    %b  |   %b | in2", a0, a1, in0, in1, in2, in3, out);
      a0 = 0; a1 = 1; in0 = 1; in1 = 1; in2 = 0; in3 = 1; #1000
      $display("%b    %b    %b    %b    %b    %b  |   %b | in2", a0, a1, in0, in1, in2, in3, out);
      // select in3
      a0 = 1; a1 = 1; in0 = 0; in1 = 0; in2 = 0; in3 = 1; #1000
      $display("%b    %b    %b    %b    %b    %b  |   %b | in3", a0, a1, in0, in1, in2, in3, out);
      a0 = 1; a1 = 1; in0 = 1; in1 = 1; in2 = 1; in3 = 0; #1000
      $display("%b    %b    %b    %b    %b    %b  |   %b | in3", a0, a1, in0, in1, in2, in3, out);
    end
endmodule
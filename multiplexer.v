// Multiplexer circuit
`define NOT not #50
`define AND and #50
`define OR or #50
`define NAND nand #50
`define NOR nor #50
`define XOR xor #50

// module behavioralMultiplexer
// (
//     output out,
//     input address0, address1,
//     input in0, in1, in2, in3
// );
//     // Join single-bit inputs into a bus, use address as index
//     wire[3:0] inputs = {in3, in2, in1, in0};
//     wire[1:0] address = {address1, address0};
//     assign out = inputs[address];
// endmodule


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Your multiplexer code here
    wire nA0, nA1;
    wire i0nA0nA1, i1A0nA1, i2nA0A1, i3A0A1;

    `NOT invA0(nA0, address0);
    `NOT invA1(nA1, address1);

    `AND and0(i0nA0nA1, in0, nA0, nA1);
    `AND and1(i1A0nA1, in1, address0, nA1);
    `AND and2(i2nA0A1, in2, nA0, address1);
    `AND and3(i3A0A1, in3, address0, address1);

    `OR orgate(out, i0nA0nA1, i1A0nA1, i2nA0A1, i3A0A1);
endmodule


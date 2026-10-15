Day 2 – Verilog Basics

Objective

To understand Verilog module structure, input and output declarations, operators, and continuous assignments.

Topics Covered

- Verilog module syntax
- Input and output ports
- Wire and register data types
- Continuous assignments
- Combinational logic
- Testbench basics

Practical Exercise: 2:1 Multiplexer

A 2:1 multiplexer selects one of two inputs based on the select signal.

module mux2to1 (
    input a,
    input b,
    input sel,
    output y
);
    assign y = sel ? b : a;
endmodule

Expected Behavior

Select| Output
0| a
1| b

Conclusion

This session introduces Verilog syntax and demonstrates how to describe a simple combinational circuit using a multiplexer.

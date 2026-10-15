Day 3 – Combinational Logic Design

1. Introduction

Combinational logic circuits produce outputs based on their current inputs. They do not store previous input values.

2. Common Combinational Circuits

- Multiplexer (MUX)
- Demultiplexer (DEMUX)
- Encoder
- Decoder
- Half Adder
- Full Adder
- Logic Gates

3. Verilog Example – Half Adder

module half_adder (
    input a,
    input b,
    output sum,
    output carry
);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule

4. Working

- "sum" is calculated using XOR.
- "carry" is calculated using AND.
- When both inputs are 1, the sum is 0 and the carry is 1.

5. Truth Table

A| B| Sum| Carry
0| 0| 0| 0
0| 1| 1| 0
1| 0| 1| 0
1| 1| 0| 1

6. Tools

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys

7. Conclusion

Combinational circuits are fundamental building blocks of digital systems. Verilog HDL allows us to describe and simulate these circuits before hardware implementation.

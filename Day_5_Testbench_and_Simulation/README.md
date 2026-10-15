Day 5 – Testbench and Simulation

1. Introduction

A testbench is a Verilog module used to verify the functionality of a design by applying input signals and observing the outputs.

2. Half Adder Design

module half_adder (
    input a,
    input b,
    output sum,
    output carry
);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule

3. Testbench Code

`timescale 1ns/1ps

module tb_half_adder;
    reg a, b;
    wire sum, carry;

    half_adder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $monitor("Time=%0t a=%b b=%b sum=%b carry=%b",
                 $time, a, b, sum, carry);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;
    end
endmodule

4. Simulation Steps

1. Write the design module.
2. Write the testbench.
3. Compile both files using Icarus Verilog.
4. Run the simulation.
5. Inspect the output or view waveforms using GTKWave.

5. Example Commands

iverilog -o sim half_adder.v tb_half_adder.v
vvp sim

6. Expected Results

A| B| Sum| Carry
0| 0| 0| 0
0| 1| 1| 0
1| 0| 1| 0
1| 1| 0| 1

7. Conclusion

Simulation helps verify digital designs before synthesis or hardware implementation.

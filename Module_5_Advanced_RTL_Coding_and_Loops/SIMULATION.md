Ripple Carry Adder Simulation Guide

1. Overview

This guide explains how to simulate and verify a 4-bit ripple carry adder using Icarus Verilog, view waveforms using GTKWave, and inspect synthesis results using Yosys.

2. Required Files

- "ripple_carry_adder.v" — RTL design.
- "ripple_carry_adder_tb.v" — Testbench.

3. Compile the Design

Run the following command in the terminal from this folder:

iverilog -o adder_sim ripple_carry_adder.v ripple_carry_adder_tb.v

4. Run the Simulation

vvp adder_sim

The testbench checks 512 input combinations. If the design is correct, no "FAIL" messages should appear, and the testbench should print its completion message.

5. View the Waveform

The simulation generates "ripple_carry_adder.vcd".

gtkwave ripple_carry_adder.vcd

Inspect the signals "a", "b", "cin", "sum", and "cout".

6. Synthesize Using Yosys

Run:

yosys -p "read_verilog ripple_carry_adder.v; hierarchy -top ripple_carry_adder; proc; opt; check; stat"

This command checks the RTL and reports synthesis statistics. It does not map the design to a specific standard-cell library.

7. Expected Behavior

The circuit adds two 4-bit inputs and a carry input.

The expected result is:

"{cout, sum} = a + b + cin"

For example, if "a = 1111", "b = 0001", and "cin = 0", then "sum = 0000" and "cout = 1".

8. Conclusion

This exercise demonstrates RTL design, exhaustive testbench verification, waveform inspection, and basic synthesis analysis.

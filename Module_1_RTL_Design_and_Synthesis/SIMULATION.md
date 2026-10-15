Simulation Guide – 2-to-1 Multiplexer

1. Overview

This guide explains how to compile and simulate the 2-to-1 multiplexer using Icarus Verilog and view the resulting waveform using GTKWave.

2. Required Files

- "mux2to1.v" – RTL design file.
- "mux2to1_tb.v" – Testbench file.

3. Install the Tools

On Ubuntu Linux, open a terminal and run:

sudo apt update
sudo apt install iverilog gtkwave yosys

4. Compile the Verilog Design

Run this command inside the directory containing both Verilog files:

iverilog -o mux_sim mux2to1.v mux2to1_tb.v

5. Execute the Simulation

vvp mux_sim

The testbench prints the input and output values to the terminal and creates a waveform file named "mux2to1.vcd".

6. View the Waveform

gtkwave mux2to1.vcd

In GTKWave, inspect the signals "a", "b", "sel", and "y" to verify the multiplexer behavior.

7. Expected Behavior

- When "sel = 0", the output follows input "a".
- When "sel = 1", the output follows input "b".

The output should match the multiplexer truth table for all eight input combinations.

8. Synthesis Using Yosys

Run:

yosys -p "read_verilog mux2to1.v; hierarchy -top mux2to1; proc; opt; stat"

This command reads the RTL, identifies the top-level module, processes the design, optimizes the logic, and displays synthesis statistics.

9. Conclusion

The simulation verifies the functional behavior of the multiplexer. The synthesis command provides an initial view of how the RTL is processed into a hardware representation.

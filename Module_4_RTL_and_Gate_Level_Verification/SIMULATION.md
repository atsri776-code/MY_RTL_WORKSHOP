Simulation and Verification Guide

1. Overview

This guide explains how to simulate a multiplexer using Icarus Verilog and inspect the synthesized design using Yosys.

2. Required Files

- "mux_verify.v" – Multiplexer RTL design.
- "mux_verify_tb.v" – Testbench for functional verification.

3. Compile the Design

Run the following command in a terminal from the directory containing both files:

iverilog -o mux_sim mux_verify.v mux_verify_tb.v

4. Run the Simulation

vvp mux_sim

The testbench checks eight combinations of the inputs "sel", "a", and "b".

5. Expected Behavior

- When "sel = 0", output "y" follows input "a".
- When "sel = 1", output "y" follows input "b".

The testbench compares the simulated output against the expected multiplexer function.

6. View the Waveform

The simulation generates a waveform file named "mux_verify.vcd".

gtkwave mux_verify.vcd

Inspect "sel", "a", "b", and "y" to verify the output transitions.

7. Synthesize the Design

yosys -p "read_verilog mux_verify.v; hierarchy -top mux_verify; proc; opt; stat"

This command reads the RTL, processes the combinational logic, performs basic optimization, and displays synthesis statistics.

8. Gate-Level Verification

To perform a true gate-level simulation, synthesize the design into a netlist and simulate that netlist with an appropriate testbench. If technology-specific cells are used, the corresponding simulation models must also be available.

The basic command above reports synthesis results; it does not by itself perform gate-level simulation.

9. Conclusion

This exercise demonstrates functional verification, waveform inspection, and basic synthesis analysis. It also highlights the importance of complete assignments in combinational RTL.

Simulation and Synthesis – D Flip-Flop

1. Overview

This guide explains how to compile, simulate, and synthesize the D flip-flop design using Icarus Verilog and Yosys.

2. Required Files

- "d_flip_flop.v" – D flip-flop RTL design.
- "d_flip_flop_tb.v" – Testbench for functional verification.

3. Compile the Design

Run the following command in a terminal from the directory containing both Verilog files:

iverilog -o dff_sim d_flip_flop.v d_flip_flop_tb.v

4. Run the Simulation

vvp dff_sim

The testbench prints the clock, input data, and output values to the terminal. It also generates a waveform file named "d_flip_flop.vcd".

5. View the Waveform

gtkwave d_flip_flop.vcd

Inspect the "clk", "d", and "q" signals.

Expected Behavior

- When the clock rises, "q" captures the value of "d".
- Between rising edges, "q" retains its previous value.
- The non-blocking assignment ("<=") models the state update appropriately.

6. Synthesize Using Yosys

yosys -p "read_verilog d_flip_flop.v; hierarchy -top d_flip_flop; proc; opt; stat"

This command reads the RTL, processes the sequential logic, performs basic optimization, and displays synthesis statistics.

7. Important Note About Timing Libraries

The basic synthesis command above does not perform technology mapping to a specific standard-cell library. For that, a compatible library and an appropriate technology-mapping flow are required.

A Liberty (".lib") file contains cell characteristics such as timing arcs, area, and operating conditions. These details are used by synthesis and timing-analysis tools.

8. Conclusion

This exercise demonstrates sequential circuit simulation and basic synthesis. It also introduces the relationship between RTL descriptions, flip-flops, and standard-cell libraries.

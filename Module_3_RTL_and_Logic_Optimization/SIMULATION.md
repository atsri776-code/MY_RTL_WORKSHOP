Simulation and Synthesis Guide – RTL Optimization

1. Overview

This guide explains how to simulate the original and optimized logic expressions and use Yosys to inspect their synthesis results.

2. Required Files

- "logic_optimization.v"
- "logic_optimization_tb.v"

3. Compile the Design

Run this command in a terminal from the directory containing the two Verilog files:

iverilog -o logic_sim logic_optimization.v logic_optimization_tb.v

4. Run the Simulation

vvp logic_sim

The testbench checks all eight combinations of the inputs "a", "b", and "c".

Expected Result

The "original" and "optimized" outputs should match for every input combination.

a| b| c| Original| Optimized
0| 0| 0| 0| 0
0| 0| 1| 1| 1
0| 1| 0| 0| 0
0| 1| 1| 1| 1
1| 0| 0| 1| 1
1| 0| 1| 1| 1
1| 1| 0| 1| 1
1| 1| 1| 1| 1

5. View the Waveform

The testbench creates "logic_optimization.vcd".

gtkwave logic_optimization.vcd

Inspect the inputs and both outputs to confirm that they match.

6. Synthesis Using Yosys

Run:

yosys -p "read_verilog logic_optimization.v; hierarchy -top logic_optimization; proc; opt; stat"

This command processes the RTL and reports synthesis statistics.

7. Important Observation

The synthesis tool may simplify both expressions into equivalent logic. The exact cell count and implementation depend on the synthesis flow and target technology.

The two outputs are logically equivalent because:

- "a & 1'b1" equals "a".
- "b & 1'b0" equals "0".
- The original expression therefore simplifies to "a | c".

8. Conclusion

This exercise demonstrates Boolean simplification, functional verification, and basic synthesis analysis. It shows how redundant operations can be removed without changing the logical output.

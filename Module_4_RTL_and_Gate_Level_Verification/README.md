Module 4 – RTL and Gate-Level Verification

1. Overview

This module introduces RTL simulation, gate-level netlists, and verification techniques used to check whether synthesized hardware behaves as intended. It also examines coding mistakes that can cause unexpected simulation results.

2. Objectives

- Understand RTL and gate-level simulation.
- Learn the purpose of a synthesized netlist.
- Verify combinational circuit functionality.
- Identify common Verilog coding mistakes.
- Understand simulation-synthesis mismatches.
- Learn the importance of complete combinational assignments.

3. Topics Covered

RTL Simulation

RTL simulation verifies the behavior of a design described using Verilog before or independently of synthesis.

Gate-Level Netlist

A gate-level netlist describes a circuit using logic cells and their connections. Its structure depends on the synthesis flow and target library.

Simulation-Synthesis Mismatches

Unexpected differences can arise from coding errors, incorrect assumptions, timing-related behavior, or differences in simulation setup.

Incomplete Combinational Assignments

If a combinational process does not assign an output in every possible branch, the design may infer a latch.

Sensitivity Lists

Using "always @(*)" in Verilog helps ensure that a combinational process responds to changes in its input signals.

4. Practical Exercise

Implement a multiplexer, write a testbench, run RTL simulation, and synthesize the design. Inspect the resulting logic and verify that the intended behavior is preserved.

5. Verification Workflow

RTL Design → RTL Simulation → Synthesis → Gate-Level Netlist → Gate-Level Simulation → Result Comparison

6. Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys

7. Expected Learning Outcomes

After completing this module, learners should understand the difference between RTL and gate-level representations, recognize common combinational coding errors, and explain why verification is important throughout the design flow.

8. Conclusion

Verification helps identify functional errors and build confidence that a digital circuit implements its intended behavior. Proper RTL coding and systematic simulation are essential parts of reliable hardware design.

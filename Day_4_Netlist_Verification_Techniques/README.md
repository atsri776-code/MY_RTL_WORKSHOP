Day 4 – Netlist Verification Techniques

1. Introduction

Gate-level simulation is used to verify a digital design after synthesis. Unlike RTL simulation, which uses the original RTL description, gate-level simulation uses a netlist containing logic elements and their connections.

This session introduces the relationship between RTL simulation, synthesis, and gate-level verification.

2. Objectives

- Understand the difference between RTL and gate-level simulation.
- Learn how synthesis generates a netlist.
- Understand multiplexer implementation.
- Identify common RTL coding mistakes.
- Study incomplete combinational assignments.
- Understand simulation-synthesis mismatches.
- Compare design behavior before and after synthesis.

3. RTL Simulation

RTL simulation checks the behavior of a design using its Verilog description and a testbench.

The testbench applies different input combinations and observes the outputs to determine whether the design behaves as expected.

4. Synthesis and Netlist Generation

Synthesis processes supported RTL code and generates a representation of the required hardware.

A netlist describes the logic elements and how they are connected. Depending on the synthesis flow, the result may use generic logic cells or cells from a target technology library.

5. Example – 2:1 Multiplexer

module mux2to1 (
    input a,
    input b,
    input sel,
    output y
);
    assign y = sel ? b : a;
endmodule

Working

- If "sel" is zero, the output follows "a".
- If "sel" is one, the output follows "b".

A testbench can apply all input combinations and verify the output.

6. Gate-Level Simulation

Gate-level simulation uses the synthesized netlist as the design under test.

A typical process is:

1. Write the RTL design.
2. Create and run an RTL testbench.
3. Synthesize the RTL.
4. Generate the netlist.
5. Prepare the required simulation models and testbench.
6. Run gate-level simulation.
7. Compare the results with the expected behavior.

Timing-aware gate-level simulation may also include cell and interconnect delays when supported by the simulation setup.

7. Common RTL Coding Issues

Incomplete Combinational Assignments

If a combinational procedural block does not assign an output for every required execution path, synthesis may infer a latch.

Incomplete Sensitivity Lists

An incomplete sensitivity list in older Verilog coding styles can cause RTL simulation behavior to differ from the intended combinational behavior. Using "always @(*)" is a common way to include the signals read by a combinational procedural block.

Simulation-Synthesis Mismatch

A mismatch occurs when the behavior observed during RTL simulation differs from the synthesized implementation. Coding mistakes, incorrect assumptions, and inconsistent models can contribute to such problems.

8. RTL-to-Gate-Level Verification Flow

RTL Code → RTL Simulation → Synthesis → Netlist Generation → Gate-Level Simulation → Result Comparison

9. Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- Appropriate simulation cell models, when required

10. Conclusion

Day 4 explains how synthesized netlists can be verified through gate-level simulation. It also highlights common RTL coding issues and the importance of comparing expected functionality with simulation results.

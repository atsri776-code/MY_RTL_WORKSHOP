Module 1 – RTL Design and Synthesis

Overview

This module introduces the RTL design flow using Verilog HDL. It covers digital logic design, writing synthesizable RTL code, creating testbenches, running simulations, and performing logic synthesis.

Objectives

- Understand the RTL design process.
- Implement combinational logic using Verilog.
- Develop and execute testbenches.
- Analyze simulation waveforms.
- Understand the basic synthesis flow.

Topics Covered

1. RTL Design

RTL describes the behavior and data flow of a digital circuit using a hardware description language.

2. Verilog Module Design

A Verilog module defines the inputs, outputs, and logic of a hardware component.

3. Combinational Logic

Combinational circuits produce outputs based on their current inputs. Examples include multiplexers, decoders, encoders, and logic gates.

4. Testbench Development

A testbench applies input combinations to a design and checks its output behavior.

5. RTL Simulation

Simulation verifies the functionality of a design before synthesis or hardware implementation.

6. Logic Synthesis

Synthesis converts synthesizable RTL into a gate-level representation using logic optimization.

Practical Exercise: 2-to-1 Multiplexer

Verilog Design

module mux2to1 (
    input wire a,
    input wire b,
    input wire sel,
    output wire y
);

assign y = sel ? b : a;

endmodule

Truth Table

sel| a| b| y
0| 0| 0| 0
0| 0| 1| 0
0| 1| 0| 1
0| 1| 1| 1
1| 0| 0| 0
1| 0| 1| 1
1| 1| 0| 0
1| 1| 1| 1

Simulation Tools

- Icarus Verilog
- GTKWave

Synthesis Tool

- Yosys

General Workflow

RTL Coding → Testbench → Simulation → Waveform Analysis → Synthesis → Netlist Inspection

Expected Learning Outcomes

After completing this module, learners should be able to write a simple Verilog module, create a testbench, verify circuit behavior, and understand the purpose of logic synthesis.

Conclusion

This module establishes the foundation for subsequent work in timing libraries, sequential design, RTL optimization, gate-level verification, and advanced Verilog coding.

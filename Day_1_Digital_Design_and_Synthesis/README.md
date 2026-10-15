Day 1 – Digital Design and Synthesis Fundamentals

1. Introduction

RTL (Register Transfer Level) design is an important stage in digital hardware development. It describes the behavior and data flow of digital circuits using a hardware description language such as Verilog HDL.

This session introduces the RTL design process, functional simulation, waveform analysis, and logic synthesis.

2. Objectives

- Understand the basic RTL design flow.
- Learn the structure of a Verilog module.
- Understand functional simulation and testbenches.
- Explore waveform analysis.
- Learn the purpose of RTL synthesis.
- Understand the role of a synthesized netlist.

3. RTL Design Flow

The basic design process consists of:

1. Understanding the circuit requirements.
2. Writing Verilog RTL code.
3. Creating a testbench.
4. Running functional simulation.
5. Checking the output waveforms.
6. Performing RTL synthesis.
7. Examining the synthesized netlist.

4. Verilog HDL Example – 2:1 Multiplexer

module mux2to1 (
    input a,
    input b,
    input sel,
    output y
);
    assign y = sel ? b : a;
endmodule

Working

- When "sel = 0", output "y" follows input "a".
- When "sel = 1", output "y" follows input "b".

5. Functional Simulation

Functional simulation checks whether the circuit produces the expected outputs for the applied inputs.

A testbench generates input signals and observes the outputs of the design under test. Simulation helps identify functional errors before synthesis.

6. Tools Used

- Verilog HDL: Describes digital hardware.
- Icarus Verilog: Compiles and simulates Verilog designs.
- GTKWave: Displays simulation waveforms.
- Yosys: Performs RTL synthesis and logic analysis.

7. Introduction to Synthesis

RTL synthesis converts a supported RTL description into a hardware representation. The synthesis tool processes the design, optimizes its logic, and generates a netlist.

A netlist describes the logic elements and their connections.

8. Applications

RTL design is used in digital controllers, communication circuits, processors, arithmetic units, and integrated circuit development.

9. Conclusion

Day 1 introduces the fundamental concepts of RTL design, Verilog HDL, simulation, and synthesis. These concepts provide the foundation for studying timing libraries, logic optimization, and gate-level verification in the following sessions.

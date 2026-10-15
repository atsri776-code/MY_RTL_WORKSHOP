RTL Engineering Lab

 Practical Workshop on RTL Design, Simulation, Synthesis and Verification

About This Repository

Welcome to my RTL Engineering Lab repository!

This repository documents my practical learning journey in digital design and Verilog HDL. It covers RTL coding, simulation, waveform analysis, synthesis, standard-cell timing libraries, logic optimization, gate-level simulation, and advanced RTL coding styles.

The workshop is organized into five days. Each day focuses on specific concepts and practical exercises to build a strong foundation in RTL design and VLSI engineering.


Workshop Progress

Day| Topics Covered| Status
Day 1| RTL Design, Verilog Simulation, GTKWave and Yosys Synthesis| Completed
Day 2| Timing Libraries, Synthesis Methods and Flip-Flop Design| Completed
Day 3| RTL Optimization, Constant Propagation and Counter Optimization| Completed
Day 4| RTL-to-Gate-Level Simulation and Simulation-Synthesis Mismatches| Completed
Day 5| RTL Coding Styles, Latches, Case Statements and Looping Constructs| Completed

Status indicates the planned workshop topics; update it as you complete and verify your practical work.

Overall RTL Design Flow

The general digital hardware design process follows these stages:

RTL Design → Verilog Coding → RTL Simulation → Waveform Analysis → Logic Synthesis → Logic Optimization → Technology Mapping → Gate-Level Netlist → Gate-Level Simulation → Verification

Each stage helps verify the intended behavior and understand how RTL code is translated into hardware.


Day 1 – Digital Design and Synthesis Fundamentals

Day 1 introduces the basic RTL design flow, Verilog coding, simulation, waveform analysis and logic synthesis.

Topics Covered

- Introduction to RTL design and digital logic.
- Design modules and testbench development.
- Introduction to Icarus Verilog.
- Implementation of a 2:1 multiplexer.
- Functional simulation of Verilog modules.
- Waveform analysis using GTKWave.
- Introduction to logic synthesis using Yosys.
- Understanding the purpose of ".lib" files.
- Introduction to standard-cell selection.
- Understanding faster and slower cell variants.
- Examining synthesis statistics and gate-level representations.
- Understanding the generated gate-level netlist.

Practical Exercise

Design a 2:1 multiplexer using Verilog HDL. Create a testbench, simulate different input combinations, inspect the waveform and examine the synthesized circuit.

Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- Linux / Ubuntu
- Git and GitHub

"View Day 1 Documentation →" (Day_1_Digital_Design_and_Synthesis/README.md)

---

Day 2 – Cell Libraries and Sequential Design

Day 2 focuses on timing libraries, technology mapping, synthesis approaches and sequential circuits.

Topics Covered

- Introduction to standard-cell libraries.
- Understanding Liberty timing files (".lib").
- Introduction to the SKY130 standard-cell library.
- Process, Voltage and Temperature (PVT) conditions.
- Timing, area and power characteristics of cells.
- Hierarchical synthesis.
- Flattened synthesis.
- Comparison of hierarchical and flattened designs.
- D flip-flop design using Verilog.
- Asynchronous reset and asynchronous set.
- Synchronous reset.
- Simulation of sequential circuits.
- Introduction to "dfflibmap".
- Technology mapping with ABC.
- Understanding gate-level representations of sequential designs.

Practical Exercise

Implement a D flip-flop with different reset styles. Verify its behavior through simulation and study how synthesis tools represent sequential elements.

Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- SKY130 standard-cell library
- Linux / Ubuntu
- Git and GitHub

"View Day 2 Documentation →" (Day_2_Cell_Libraries_and_Sequential_Design/README.md)

Day 3 – Hardware Logic Refinement

Day 3 explores RTL and logic optimization techniques used to simplify digital circuits while preserving their intended functionality.

Topics Covered

- Introduction to RTL optimization.
- Combinational logic optimization.
- AND and OR logic implementations.
- Three-input AND logic.
- Boolean simplification.
- Constant propagation.
- Removal of redundant logic.
- D flip-flop optimization.
- Sequential logic with constant inputs.
- Counter optimization.
- Comparison of optimized and unoptimized logic.
- Understanding the effects of RTL descriptions on synthesis.
- Interpreting synthesis results.

Optimization Flow

RTL Code → Boolean Simplification → Constant Propagation → Redundant Logic Removal → Optimized Hardware

Practical Exercise

Write multiple versions of a simple digital circuit, synthesize each version and compare the resulting logic. Observe how constants and redundant expressions can affect the generated hardware.

Expected Learning

Understand that synthesis tools can simplify hardware descriptions and that equivalent RTL implementations may produce different intermediate representations or synthesis results.

"View Day 3 Documentation →" (Day_3_Hardware_Logic_Refinement/README.md)


Day 4 – Netlist Verification Techniques

Day 4 focuses on verifying synthesized hardware and understanding the relationship between RTL simulation and gate-level simulation.

Topics Covered

- Introduction to the RTL-to-gate-level simulation flow.
- Understanding synthesized gate-level netlists.
- Designing a multiplexer using the ternary operator.
- MUX working principle and truth table.
- RTL simulation and functional verification.
- Synthesis of RTL designs.
- Gate-level simulation.
- Incomplete sensitivity lists.
- Incorrect and correct MUX implementations.
- Use of "always @(*)" in combinational logic.
- Blocking assignments and their implications.
- Non-blocking assignments and their implications.
- Simulation-synthesis mismatches.
- Comparing RTL and gate-level behavior.
- Identifying common RTL coding errors.

Verification Flow

RTL Design → RTL Simulation → Synthesis → Gate-Level Netlist → Gate-Level Simulation → Result Comparison

Practical Exercise

Implement a multiplexer, simulate it, synthesize the design and compare its behavior with the gate-level representation. Investigate coding errors that may cause unexpected simulation behavior.

Expected Learning

Understand why correct RTL coding, complete combinational assignments and proper verification are important for reliable hardware design.

"View Day 4 Documentation →" (Day_4_Netlist_Verification_Techniques/README.md)



Day 5 – Advanced RTL Coding Practices

Day 5 explores RTL coding styles, conditional statements, inferred latches and looping constructs used in hardware description.

Topics Covered

- RTL coding styles using "if-else".
- "case" statements in Verilog.
- Incomplete conditional statements.
- Inferred latches and how to avoid them.
- Practical exercises involving incomplete "if" statements.
- Different "case" statement implementations.
- Overlapping "case" conditions and priority behavior.
- Redundancy removal during synthesis.
- Looping constructs in Verilog.
- Writing loop-based MUX designs.
- Writing loop-based DEMUX designs.
- Ripple Carry Adder (RCA) design.
- Simulation and verification of arithmetic circuits.
- Comparing RTL descriptions and synthesized hardware.

Hardware Design Flow

RTL Coding → Testbench Development → Simulation → Synthesis → Hardware Inference → Netlist and Waveform Analysis

Practical Exercise

Implement combinational circuits using "if-else", "case" and looping constructs. Verify the circuits using testbenches and examine how coding styles affect hardware inference.

Expected Learning

Develop better Verilog coding habits, understand the difference between combinational and sequential behavior, and recognize coding patterns that can cause unintended latches.

"View Day 5 Documentation →" (Day_5_Advanced_RTL_Coding_Practices/README.md)

---

Tools and Technologies Used

Tool / Technology| Purpose
Verilog HDL| Describing digital hardware
Icarus Verilog| Compiling and simulating Verilog
GTKWave| Visualizing simulation waveforms
Yosys| Logic synthesis and optimization
SKY130| Open-source standard-cell library
Linux / Ubuntu| Development environment
Git| Version control
GitHub| Repository hosting and documentation


Overall Learning Outcomes

Through this workshop, I aim to develop practical skills in:

- Writing and simulating Verilog RTL modules.
- Creating testbenches and analyzing waveforms.
- Implementing combinational and sequential circuits.
- Understanding standard-cell timing libraries.
- Learning hierarchical and flattened synthesis.
- Working with D flip-flops and reset styles.
- Applying logic optimization and constant propagation.
- Understanding synthesis statistics and gate-level netlists.
- Performing gate-level simulation.
- Identifying simulation-synthesis mismatches.
- Using blocking and non-blocking assignments correctly.
- Preventing unintended latch inference.
- Applying "if-else", "case" and looping constructs.
- Designing MUX, DEMUX and Ripple Carry Adder circuits.
- Using Git and GitHub to organize engineering projects.


Repository Structure

MY_RTL_WORKSHOP/
│
├── README.md
│
├── Day_1_Digital_Design_and_Synthesis/
│   └── README.md
│
├── Day_2_Cell_Libraries_and_Sequential_Design/
│   └── README.md
│
├── Day_3_Hardware_Logic_Refinement/
│   └── README.md
│
├── Day_4_Netlist_Verification_Techniques/
│   └── README.md
│
└── Day_5_Advanced_RTL_Coding_Practices/
    └── README.md

Each day's folder contains its own documentation. Verilog source files, testbenches, screenshots, waveforms and synthesis reports can be added to the corresponding folder as the practical work progresses.


Conclusion

RTL Engineering Lab provides a structured introduction to the RTL design process, from Verilog coding and simulation to synthesis, optimization and gate-level verification.

The  workshop builds a foundation in digital design and helps develop the practical skills needed to explore more advanced VLSI design and verification workflows.

Author

A.Tharuna

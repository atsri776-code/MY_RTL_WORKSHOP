

Day 1 – RTL Design Fundamentals

1. RTL Design Flow

RTL (Register Transfer Level) design describes the behavior and data flow of a digital circuit using a Hardware Description Language (HDL), such as Verilog. The RTL design process includes writing Verilog code, verifying the design through simulation, and synthesizing the code into a gate-level circuit. This workflow helps confirm that the circuit operates correctly before hardware implementation.

"RTL Design Flow" (images/rtl_design_flow.png)

2. Verilog Code

Verilog is a hardware description language used to design and model digital circuits. In this workshop, Verilog is used to implement a 2:1 multiplexer. The multiplexer selects one of two input signals based on the select line and transfers the selected signal to the output.

"Verilog Code" (images/verilog_code.png)

3. Testbench

A testbench is a Verilog module used to verify the functionality of a digital design. It applies different input combinations to the design under test and observes the resulting outputs. For a 2:1 multiplexer, the testbench checks whether the output follows the selected input for different values of the select signal.

"Testbench" (images/testbench.png)

4. Simulation Waveform

A simulation waveform displays changes in input and output signals over time. It helps verify the circuit's behavior and determine whether the design matches the expected truth table. Waveforms can be viewed using GTKWave after running the simulation with a tool such as Icarus Verilog.

"Simulation Waveform" (images/simulation_waveform.png)

5. Synthesis Output

Synthesis converts the Verilog RTL description into a gate-level representation using logic cells. Yosys is an open-source synthesis tool that can perform this conversion and provide information about the resulting circuit. The synthesis output helps explain how the RTL design can be implemented using digital logic gates.

"Yosys Synthesis Output" (images/yosys_output.png)

Tools Used

- Verilog HDL: Describes the digital circuit.
- Icarus Verilog: Compiles and simulates Verilog designs.
- GTKWave: Displays simulation waveforms.
- Yosys: Synthesizes RTL code into a gate-level representation.

Conclusion

This workshop introduces the basic RTL design and verification process. By implementing a 2:1 multiplexer, writing a testbench, analyzing simulation waveforms, and performing synthesis, we learn how a digital design progresses from Verilog code to a gate-level representation.

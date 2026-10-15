Day 6 – RTL Synthesis Using Yosys

1. Introduction

RTL synthesis converts a hardware design written in Verilog into a gate-level representation using logic cells.

2. What Is Yosys?

Yosys is an open-source synthesis tool used to process Verilog designs and generate synthesized netlists.

3. RTL Design Example

module mux2to1 (
    input a,
    input b,
    input sel,
    output y
);
    assign y = sel ? b : a;
endmodule

4. Synthesis Flow

1. Write the Verilog RTL code.
2. Read the Verilog source into Yosys.
3. Check and process the design hierarchy.
4. Perform synthesis.
5. Generate the synthesized netlist.
6. Inspect the results.

5. Example Yosys Commands

yosys

Inside the Yosys prompt, run:

read_verilog mux2to1.v
hierarchy -top mux2to1
synth -top mux2to1
stat
write_verilog mux2to1_netlist.v

6. Important Terms

- RTL: Register Transfer Level description of hardware.
- Synthesis: Conversion of RTL into a logic implementation.
- Netlist: A description of connected logic cells.
- Logic optimization: Simplifying the design while preserving its behavior.

7. Conclusion

Yosys helps synthesize and analyze Verilog designs. Synthesis is an important step in the RTL-to-hardware design flow.

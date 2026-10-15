Day 2 – Cell Libraries and Sequential Design

1. Introduction

Standard-cell libraries and sequential logic are important parts of digital integrated circuit design. Cell libraries provide information about the logic cells available in a technology, while sequential circuits store data and change state according to clock and reset signals.

This session introduces timing libraries, synthesis methods, and flip-flop RTL coding.

2. Objectives

- Understand standard-cell libraries.
- Learn the purpose of ".lib" files.
- Understand process, voltage, and temperature (PVT) conditions.
- Explore hierarchical and flattened synthesis.
- Understand D flip-flop behavior.
- Learn synchronous and asynchronous reset concepts.

3. Standard-Cell Libraries

A standard-cell library contains information about cells used to implement digital circuits.

Common cell types include:

- AND and OR gates
- NAND and NOR gates
- Inverters
- Multiplexers
- Flip-flops
- Buffers

Library information can include cell functions, timing characteristics, power information, and electrical constraints.

4. Timing Library

A Liberty-format ".lib" file describes the characteristics of cells in a technology library.

Important information may include:

- Cell names and functions.
- Input capacitance.
- Timing arcs and propagation delays.
- Setup and hold requirements.
- Power characteristics.
- Operating conditions.

5. PVT Conditions

PVT stands for:

- Process: Manufacturing variations.
- Voltage: Operating supply voltage.
- Temperature: Operating temperature.

These conditions affect cell timing and electrical behavior. Designers analyze appropriate operating corners to evaluate whether a circuit meets its requirements.

6. Sequential Logic

Sequential circuits store information and update their state in response to clock or control signals.

Examples include:

- D flip-flops
- Registers
- Counters
- Shift registers
- State machines

7. Verilog Example – D Flip-Flop

module dff (
    input clk,
    input rst,
    input d,
    output reg q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule

Working

- "clk" is the clock input.
- "rst" is an active-high asynchronous reset.
- "d" is the data input.
- "q" stores the input value on the rising edge of the clock when reset is inactive.

8. Synthesis Concepts

Hierarchical synthesis preserves module hierarchy during relevant synthesis stages.

Flattened synthesis combines module hierarchy so that logic can be optimized across module boundaries.

The resulting implementation depends on the design, tool settings, and target technology.

9. Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- Standard-cell timing libraries

10. Conclusion

Day 2 introduces timing libraries, PVT conditions, sequential logic, flip-flop RTL, and synthesis hierarchy. These concepts help explain how digital circuits are represented and evaluated during VLSI development.

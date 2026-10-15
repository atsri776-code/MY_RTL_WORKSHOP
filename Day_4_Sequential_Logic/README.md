Day 4 – Sequential Logic Design

1. Introduction

Sequential logic circuits depend on both current inputs and previously stored states. They use memory elements to store information.

2. Types of Sequential Circuits

- SR Flip-Flop
- D Flip-Flop
- JK Flip-Flop
- T Flip-Flop
- Registers
- Counters

3. Verilog Example – D Flip-Flop

module d_flip_flop (
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

4. Working

- "clk" is the clock input.
- "rst" is the asynchronous active-high reset.
- "d" is the data input.
- "q" stores the input value at the rising edge of the clock, unless reset is active.
- The non-blocking assignment "<=" is commonly used in sequential logic.

5. Applications

- Registers
- Counters
- Memory units
- Control circuits
- Digital systems

6. Tools

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys

7. Conclusion

Sequential logic is essential for designing digital circuits that store and update information over time.

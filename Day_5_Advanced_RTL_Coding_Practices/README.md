Day 5 – Advanced RTL Coding Practices

1. Introduction

Verilog coding style affects how digital hardware is described and inferred during synthesis. Writing clear, complete, and consistent RTL helps avoid unintended hardware and makes designs easier to verify and maintain.

This session covers conditional statements, procedural assignments, latch inference, looping constructs, and practical digital circuit examples.

2. Objectives

- Understand IF-ELSE and CASE statements.
- Learn the difference between blocking and non-blocking assignments.
- Identify conditions that cause latch inference.
- Understand combinational and sequential coding styles.
- Learn how looping constructs can describe repetitive hardware.
- Practice multiplexer and adder designs.

3. IF-ELSE Statements

IF-ELSE statements describe decisions based on conditions.

Example:

module simple_selector (
    input a,
    input b,
    input sel,
    output reg y
);
    always @(*) begin
        if (sel)
            y = b;
        else
            y = a;
    end
endmodule

The output follows "a" when "sel" is zero and follows "b" when "sel" is one.

Both branches assign "y", so this describes combinational logic.

4. CASE Statements

CASE statements are useful when a circuit must select among multiple alternatives.

Example:

module decoder (
    input [1:0] sel,
    output reg [3:0] y
);
    always @(*) begin
        case (sel)
            2'b00: y = 4'b0001;
            2'b01: y = 4'b0010;
            2'b10: y = 4'b0100;
            2'b11: y = 4'b1000;
            default: y = 4'b0000;
        endcase
    end
endmodule

The "default" branch helps define behavior for any selector values not explicitly covered. For this two-bit selector, all four binary combinations are already listed.

5. Blocking and Non-Blocking Assignments

Blocking Assignment ("=")

Blocking assignments update a procedural variable immediately within the current procedural execution order. They are commonly used in combinational procedural blocks.

Non-Blocking Assignment ("<=")

Non-blocking assignments schedule updates for the end of the current simulation time step. They are commonly used in clocked sequential logic.

Choosing the correct assignment type helps make simulation behavior clear and predictable.

6. Latch Inference

A latch may be inferred when a procedural block does not assign a signal under every required condition.

For example, if an output is assigned only when "sel" is one, its previous value must be retained when "sel" is zero. This storage behavior can infer a latch.

For purely combinational logic, ensure every output is assigned for every possible execution path.

7. Looping Constructs

Verilog supports looping constructs such as "for", "while", and "repeat" in appropriate contexts.

Loops can simplify repetitive descriptions. In synthesizable RTL, loop bounds and behavior must be supported by the synthesis tool; statically bounded loops are commonly expanded into hardware during synthesis.

8. Example – Four-Bit Ripple Carry Adder

A ripple carry adder adds two binary numbers, propagating carry information between bit positions.

module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule

module ripple_carry_adder (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);
    wire c1, c2, c3;

    full_adder fa0(a[0], b[0], cin, sum[0], c1);
    full_adder fa1(a[1], b[1], c1, sum[1], c2);
    full_adder fa2(a[2], b[2], c2, sum[2], c3);
    full_adder fa3(a[3], b[3], c3, sum[3], cout);
endmodule

The carry output from each full-adder stage becomes the carry input for the next stage.

9. Verification and Synthesis

A good RTL development process includes:

1. Writing the Verilog module.
2. Creating a testbench.
3. Applying normal and boundary input conditions.
4. Checking the simulation outputs.
5. Running synthesis.
6. Inspecting the synthesis report.
7. Correcting errors and repeating verification.

10. Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys

11. Conclusion

Day 5 introduces important Verilog coding techniques, including conditional statements, assignment styles, latch prevention, and looping constructs. The ripple carry adder example demonstrates how reusable modules can be connected to build a larger digital circuit.

These practices provide a foundation for developing clear, synthesizable, and verifiable RTL designs.

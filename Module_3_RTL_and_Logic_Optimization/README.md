Module 3 – RTL and Logic Optimization

1. Overview

This module explores how RTL coding and logic optimization affect the hardware produced by synthesis tools. It introduces Boolean simplification, constant propagation, redundant logic removal, and basic sequential circuit optimization.

2. Objectives

- Understand RTL and logic optimization.
- Simplify Boolean expressions.
- Identify redundant logic.
- Understand constant propagation.
- Compare alternative RTL implementations.
- Examine synthesis statistics.

3. Topics Covered

Boolean Logic Simplification

Boolean algebra can simplify expressions and reduce unnecessary logic.

Example:

Y = A AND 1
Y = A

Constant Propagation

When an input or signal has a constant value, synthesis can often simplify the surrounding logic.

Example:

assign y = a & 1'b1;

This is logically equivalent to:

assign y = a;

Redundant Logic Removal

Synthesis tools can eliminate logic that does not affect the observable outputs of a design.

Combinational Logic Optimization

Combinational circuits can be simplified by reducing unnecessary operations while preserving their truth tables.

Sequential Logic Optimization

Sequential logic requires care because registers store state. Optimization must preserve the design's behavior across clock cycles.

4. Practical Exercise

Create two equivalent implementations of a simple logic function. Simulate both implementations and compare their synthesized representations.

5. Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys

6. Expected Learning Outcomes

After completing this module, learners should be able to recognize simple logic optimizations, understand constant propagation, and inspect synthesis results to see how RTL is transformed.

7. Conclusion

RTL optimization helps produce clear and efficient hardware descriptions. Simulation and synthesis analysis help verify that optimization preserves the intended functionality.

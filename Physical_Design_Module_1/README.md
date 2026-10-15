Physical Design Module 1: Introduction to Physical Design

1. Introduction

Physical design is an important stage in the VLSI design flow. It transforms a synthesized logical netlist into a physical layout that can be manufactured as an integrated circuit.

The process considers timing, area, power, placement, routing, and design-rule constraints.

2. Objectives

- Understand the physical design flow.
- Learn the difference between RTL, synthesis, and physical design.
- Understand floorplanning and placement.
- Learn the basics of clock tree synthesis and routing.
- Understand timing and design-rule checks.

3. Physical Design Flow

1. RTL Design
2. RTL Simulation and Verification
3. Logic Synthesis
4. Floorplanning
5. Power Planning
6. Placement
7. Clock Tree Synthesis (CTS)
8. Routing
9. Static Timing Analysis (STA)
10. Physical Verification and Sign-off

4. Important Concepts

Floorplanning

Defines the chip or block dimensions and arranges major design components.

Power Planning

Creates power and ground networks to distribute power across the design.

Placement

Positions standard cells within the core area while considering timing and congestion.

Clock Tree Synthesis

Builds a clock distribution network to deliver the clock to sequential elements.

Routing

Connects cell pins using metal interconnects.

Static Timing Analysis

Checks timing constraints and determines whether timing requirements are met.

Design Rule Check

Checks whether the layout follows the manufacturing rules specified by the process technology.

5. Common Physical Design Challenges

- Timing violations
- Congestion
- Excessive power consumption
- Large area
- Clock skew
- Signal integrity issues

6. Conclusion

Physical design converts a synthesized netlist into a manufacturable layout. Each stage must be checked carefully to achieve the required power, performance, and area (PPA).

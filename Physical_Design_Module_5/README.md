Physical Design Module 5: Routing and Sign-off

1. Introduction

Routing is the physical design stage in which metal interconnects are created to connect standard cells, macros, and other components according to the netlist.

Sign-off is the final verification stage that checks whether the design meets its timing, power, physical verification, and reliability requirements before manufacturing.

2. Learning Objectives

- Understand global routing and detailed routing.
- Learn about metal layers and vias.
- Understand parasitic extraction.
- Learn Static Timing Analysis (STA).
- Understand Design Rule Check (DRC) and Layout Versus Schematic (LVS).
- Identify common sign-off checks.

3. Types of Routing

Global Routing

Divides the design into routing regions and estimates the paths that nets will use. It helps identify congestion and routing-resource problems.

Detailed Routing

Creates the actual interconnect geometry using metal tracks and vias while satisfying design rules.

4. Metal Layers and Vias

Metal layers: Conductive layers used to connect circuit components.

Vias: Structures that connect wires on different metal layers.

Routing must follow the manufacturing rules defined by the process technology.

5. Parasitic Extraction

Interconnects introduce parasitic resistance and capacitance. These parasitics affect signal delay, transition time, and power consumption.

Parasitic extraction estimates these electrical effects from the physical layout.

6. Static Timing Analysis

STA checks whether timing paths satisfy the required timing constraints.

Important concepts include:

- Setup time
- Hold time
- Clock skew
- Propagation delay
- Timing slack
- Critical paths

Timing analysis is repeated after routing because actual interconnect parasitics can change path delays.

7. Physical Verification

Design Rule Check (DRC)

Checks whether the layout follows manufacturing rules, such as minimum spacing and minimum width.

Layout Versus Schematic (LVS)

Checks whether the extracted layout connectivity matches the intended circuit netlist.

Electrical Rule Checks

Checks electrical constraints such as specified limits on transition time, capacitance, and fanout.

8. Sign-off Checklist

- Timing requirements satisfied
- Setup and hold violations resolved
- DRC checks passed
- LVS checks passed
- Signal integrity reviewed
- Power and reliability requirements checked
- Final reports reviewed

9. Conclusion

Routing establishes the physical connections between circuit components. Sign-off verifies that the completed layout meets the required functional, timing, manufacturing, and reliability constraints before tape-out.

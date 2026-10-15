Physical Design Module 2: Floorplanning and Power Planning

1. Introduction

Floorplanning and power planning are important early stages of the VLSI physical design flow. Floorplanning determines the dimensions and arrangement of the design, while power planning establishes networks that distribute power and ground throughout the chip.

2. Learning Objectives

- Understand floorplanning concepts.
- Learn about core area and utilization.
- Understand aspect ratio and macro placement.
- Learn about power and ground networks.
- Identify common floorplanning challenges.

3. Floorplanning

Floorplanning defines the physical layout boundaries and the initial arrangement of major components.

Important Parameters

Die Area: The total area occupied by the chip.

Core Area: The area inside the die where the main design cells are placed.

Core Utilization: The percentage of the core area occupied by standard cells.

Utilization can be expressed as:

Utilization (%) = (Standard Cell Area / Core Area) × 100

Aspect Ratio: The ratio of the core height to its width.

Aspect ratio = Core Height / Core Width

Macro Placement: Determines the locations of large blocks such as SRAMs and other hard macros.

4. Power Planning

Power planning establishes power and ground networks to supply the required voltage and current to the design.

Main Components

- Power rings
- Power stripes
- Power rails
- Power and ground connections

5. IR Drop

IR drop is the voltage reduction caused by resistance in the power distribution network when current flows through it.

Excessive IR drop can affect circuit performance and reliability.

6. Electromigration

Electromigration is the movement of metal atoms caused by high current density. It can damage interconnects and reduce chip reliability.

7. Common Challenges

- High cell utilization
- Congestion around macros
- Insufficient power connections
- Excessive IR drop
- Electromigration violations
- Poor floorplan dimensions

8. Conclusion

A good floorplan provides sufficient space for cells, macros, and routing. An effective power network helps deliver stable power while controlling IR drop and electromigration risks.

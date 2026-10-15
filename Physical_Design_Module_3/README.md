Physical Design Module 3: Placement and Optimization

1. Introduction

Placement is a physical design stage in which standard cells are assigned physical locations within the core area. Placement optimization improves timing, reduces congestion, and helps achieve power, performance, and area (PPA) targets.

2. Learning Objectives

- Understand the standard-cell placement process.
- Learn global placement and detailed placement.
- Understand timing-driven placement.
- Identify congestion and high-fanout problems.
- Learn common placement optimization techniques.

3. Types of Placement

Global Placement

Determines approximate locations for standard cells while attempting to optimize wirelength, timing, and density. Cells may temporarily overlap.

Detailed Placement

Legalizes cell locations and removes overlaps while respecting placement rows and design constraints.

4. Placement Optimization

Placement optimization improves the physical implementation by adjusting cell locations and, where appropriate, modifying the netlist.

Common techniques include:

- Cell resizing
- Buffer insertion
- Buffer removal
- Cell relocation
- High-fanout net optimization
- Congestion reduction

5. Timing-Driven Placement

Timing-driven placement prioritizes critical paths to help satisfy timing constraints.

Important concepts include:

- Setup time
- Hold time
- Critical path
- Slack
- Clock period
- Signal propagation delay

Positive slack generally indicates that a timing requirement is met; negative slack indicates a violation.

6. Congestion

Congestion occurs when too many nets compete for limited routing resources in a region.

Possible solutions include:

- Improving floorplan utilization
- Moving cells or macros
- Reducing local cell density
- Optimizing high-fanout nets
- Improving placement distribution

7. Placement Verification

After placement, designers typically check:

- Placement legality
- Cell overlaps
- Timing estimates
- Congestion reports
- High-fanout nets
- Maximum transition and capacitance constraints

8. Conclusion

Placement and optimization establish the physical locations of standard cells and improve the design before clock tree synthesis and routing. Good placement helps achieve timing closure and reduces physical implementation problems.

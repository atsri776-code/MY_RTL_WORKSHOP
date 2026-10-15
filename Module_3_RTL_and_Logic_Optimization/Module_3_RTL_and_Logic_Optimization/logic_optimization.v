module logic_optimization (
input wire a,
input wire b,
input wire c,
output wire y_original,
output wire y_optimized
);

assign y_original = (a & 1'b1) | (b & 1'b0) | c;

assign y_optimized = a | c;

endmodule

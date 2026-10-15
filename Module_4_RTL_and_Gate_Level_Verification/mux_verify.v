module mux_verify (
input wire a,
input wire b,
input wire sel,
output reg y
);

always @(*) begin
if (sel == 1'b0)
y = a;
else
y = b;
end

endmodule

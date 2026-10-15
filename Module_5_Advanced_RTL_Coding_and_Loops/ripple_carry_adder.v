module ripple_carry_adder (
input wire [3:0] a,
input wire [3:0] b,
input wire cin,
output wire [3:0] sum,
output wire cout
);

wire [4:0] carry;
assign carry[0] = cin;

genvar i;
generate
for (i = 0; i < 4; i = i + 1) begin : adder_stage
assign sum[i] = a[i] ^ b[i] ^ carry[i];
assign carry[i+1] =
(a[i] & b[i]) |
(a[i] & carry[i]) |
(b[i] & carry[i]);
end
endgenerate

assign cout = carry[4];

endmodule

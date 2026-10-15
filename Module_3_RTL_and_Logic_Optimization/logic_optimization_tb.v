`timescale 1ns/1ps

module logic_optimization_tb;

reg a, b, c;
wire y_original, y_optimized;
integer i;

logic_optimization dut (
.a(a),
.b(b),
.c(c),
.y_original(y_original),
.y_optimized(y_optimized)
);

initial begin
$dumpfile("logic_optimization.vcd");
$dumpvars(0, logic_optimization_tb);

for (i = 0; i < 8; i = i + 1) begin
    {a, b, c} = i;
    #10;

    $display("a=%b b=%b c=%b original=%b optimized=%b",
             a, b, c, y_original, y_optimized);

    if (y_original !== y_optimized)
        $display("ERROR: Outputs do not match!");
end

$finish;

end

endmodule

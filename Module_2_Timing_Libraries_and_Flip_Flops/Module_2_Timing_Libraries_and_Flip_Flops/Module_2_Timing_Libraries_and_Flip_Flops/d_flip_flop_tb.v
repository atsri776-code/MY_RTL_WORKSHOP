`timescale 1ns/1ps

module d_flip_flop_tb;

reg clk;
reg d;
wire q;

d_flip_flop dut (
.clk(clk),
.d(d),
.q(q)
);

always #5 clk = ~clk;

initial begin
$dumpfile("d_flip_flop.vcd");
$dumpvars(0, d_flip_flop_tb);

clk = 0;
d = 0;

#12 d = 1;
#10 d = 0;
#10 d = 1;
#10;

$finish;

end

initial begin
$monitor("time=%0t clk=%b d=%b q=%b",
$time, clk, d, q);
end

endmodule

`timescale 1ns/1ps

module mux2to1_tb;

reg a, b, sel;
wire y;

mux2to1 dut (
.a(a),
.b(b),
.sel(sel),
.y(y)
);

initial begin
$dumpfile("mux2to1.vcd");
$dumpvars(0, mux2to1_tb);

$monitor("time=%0t a=%b b=%b sel=%b y=%b",
         $time, a, b, sel, y);

sel = 0; a = 0; b = 0; #10;
sel = 0; a = 0; b = 1; #10;
sel = 0; a = 1; b = 0; #10;
sel = 0; a = 1; b = 1; #10;
sel = 1; a = 0; b = 0; #10;
sel = 1; a = 0; b = 1; #10;
sel = 1; a = 1; b = 0; #10;
sel = 1; a = 1; b = 1; #10;

$finish;

end

endmodule

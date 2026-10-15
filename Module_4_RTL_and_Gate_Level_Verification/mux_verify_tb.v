`timescale 1ns/1ps

module mux_verify_tb;

reg a, b, sel;
wire y;
integer i;

mux_verify dut (
.a(a),
.b(b),
.sel(sel),
.y(y)
);

initial begin
$dumpfile("mux_verify.vcd");
$dumpvars(0, mux_verify_tb);

for (i = 0; i < 8; i = i + 1) begin
    {sel, a, b} = i;
    #10;
    $display("sel=%b a=%b b=%b y=%b", sel, a, b, y);

    if (y !== (sel ? b : a))
        $display("ERROR: Output mismatch!");
end

$finish;

end

endmodule

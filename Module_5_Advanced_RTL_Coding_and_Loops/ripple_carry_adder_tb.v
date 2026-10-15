`timescale 1ns/1ps

module ripple_carry_adder_tb;

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

integer i, j, k;
reg [4:0] expected;

ripple_carry_adder dut (
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);

initial begin
$dumpfile("ripple_carry_adder.vcd");
$dumpvars(0, ripple_carry_adder_tb);

for (i = 0; i < 16; i = i + 1) begin
    for (j = 0; j < 16; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
            a = i;
            b = j;
            cin = k;
            expected = a + b + cin;

            #10;

            if ({cout, sum} !== expected)
                $display("FAIL: a=%d b=%d cin=%b expected=%d actual=%d",
                         a, b, cin, expected, {cout, sum});
        end
    end
end

$display("Testbench completed: checked 512 input combinations.");
$finish;

end

endmodule

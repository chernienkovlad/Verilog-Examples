`timescale 1 ns / 100 ps

module testbench;

reg [7:0]a, b;
wire [7:0]sum;
adder8 adder2(.a(a), .b(b), .sum(sum));

initial
begin
    a = 8'd25;  b = 8'd25;  #0 $display("%d + %d = %d", a, b, sum);
    a = 8'd10;  b = 8'd128; #0 $display("%d + %d = %d", a, b, sum);
    a = 8'd128; b = 8'd128; #0 $display("%d + %d = %d", a, b, sum);
    a = 8'd127; b = 8'd128; #0 $display("%d + %d = %d", a, b, sum);
end

endmodule
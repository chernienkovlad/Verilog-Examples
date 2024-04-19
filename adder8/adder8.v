module adder1 (
    input a,
    input b,
    input c_in,
    output sum,
    output c_out
);

assign sum = (a ^ b) ^ c_in;
assign c_out = (a & b) | ((a ^ b) & c_in);

endmodule

module adder8 (
    input [7:0]a,
    input [7:0]b,
    output [7:0]sum,
    output c_out
);

wire c0, c1, c2, c3, c4, c5, c6;

adder1 add0(.a(a[0]), .b(b[0]), .c_in(1'b0), .sum(sum[0]), .c_out(c0));
adder1 add1(.a(a[1]), .b(b[1]), .c_in(c0), .sum(sum[1]), .c_out(c1));
adder1 add2(.a(a[2]), .b(b[2]), .c_in(c1), .sum(sum[2]), .c_out(c2));
adder1 add3(.a(a[3]), .b(b[3]), .c_in(c2), .sum(sum[3]), .c_out(c3));
adder1 add4(.a(a[4]), .b(b[4]), .c_in(c3), .sum(sum[4]), .c_out(c4));
adder1 add5(.a(a[5]), .b(b[5]), .c_in(c4), .sum(sum[5]), .c_out(c5));
adder1 add6(.a(a[6]), .b(b[6]), .c_in(c5), .sum(sum[6]), .c_out(c6));
adder1 add7(.a(a[7]), .b(b[7]), .c_in(c6), .sum(sum[7]), .c_out(c_out));

endmodule
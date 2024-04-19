module d_latch (
    input d,
    input c,
    output q,
    output nq
);
  
wire a = ~(d & c);
wire b = ~(~d & c);

assign q = ~(a & nq);
assign nq = ~(b & q);
  
endmodule

module flip_flop (
    input d,
    input clk,
    output q,
    output nq
);
  
wire a;

d_latch d1(.d(d), .c(~clk), .q(a));
d_latch d2(.d(a), .c(clk), .q(q), .nq(nq));
  
endmodule
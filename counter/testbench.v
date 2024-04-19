`timescale 1 ns / 100 ps

module testbench;

reg clk = 1'b1;
reg reset = 1'b1; 
reg load = 1'b0;
reg [3:0]data = 4'd0;
wire [3:0]out;

counter cnt(.clk(clk), .reset(reset), .load(load), .data(data), .q(out));

always
    #1 clk = ~clk;

initial begin
    $dumpvars;
    #60 $finish;
end

initial begin
    #1 reset = 1'b0;

    #12.5 load = 1'b1; data = 4'd5;
    #4 load = 1'b0; data = 4'd0;

    #5 load = 1'b1; data = 4'd10;
    #2 load = 1'b0; data = 4'd0;
end

endmodule
`timescale 1 ns / 100 ps

module testbench;

reg clk = 1'b0; 
reg in = 1'b0;
wire out, nout;
flip_flop ff(.d(in), .clk(clk), .q(out), .nq(nout));

always
    #1 clk = ~clk;

initial begin
    $dumpvars;
    #35 $finish;
end

initial begin
    #1 in = 1'b1;
    #21.3 in = 1'b0;
    #2.5 in = 1'b1;
    #4.7 in = 1'b0;
end

endmodule
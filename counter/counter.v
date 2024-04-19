module counter #(parameter MODULE = 10, parameter DATA_WIDTH = 4)
(
    input clk,
    input reset,
    input load,
    input [DATA_WIDTH-1 : 0]data,
    output reg [DATA_WIDTH-1 : 0]q
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        q <= 0;
    else
        if (load)
            q <= data;
        else
            if (q == MODULE - 1)
                q <= 0;
            else
                q <= q + 1'b1;
end

endmodule
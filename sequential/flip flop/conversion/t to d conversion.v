module t_2_d (input clk,
    input rst,
    input d,
    output reg q);
wire t;
assign t=d^q;
always @(posedge clk or posedge rst) begin
    if (rst)
        q<=1'b0;
    else if(t)
        q<=~q;
end
endmodule

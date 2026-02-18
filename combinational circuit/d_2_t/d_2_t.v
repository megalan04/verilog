module d_to_t(input clk,rst,t,
    output reg Q);
    wire d;
    assign d=t^Q;
    always@(posedge clk or posedge rst) begin
        if(rst)
            Q<=0;
        else
            Q<=d;
    end
endmodule

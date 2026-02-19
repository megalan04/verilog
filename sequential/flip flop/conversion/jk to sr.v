module jk_ff (
    input clk,
    input rst,
    input j,
    input k,
    output reg Q);
    always @(posedge clk or posedge rst) begin
    if (rst)
        Q<=1'b0;
    else begin
      case ({j,k})
            2'b00:Q<=Q;
            2'b01:Q<=1'b0;    
            2'b10:Q<=1'b1;    
            2'b11:Q<=~Q;      
        endcase
    end
end
endmodule
module jk_2_sr(input clk,rst,s,r,
               output q );
  //to avoid toggle
  assign j=s&~r;
  assign k=~s&r;
  jk_ff DUT(.clk(clk),.rst(rst),.j(j),.k(k),.Q(q));
endmodule
    

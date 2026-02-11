module sr_flip_flop(input s,r,clk,rst,
                    output reg q);
  always@(posedge clk or posedge rst)begin
    if(rst)
      q<= 1'b0;
    else begin
     case ({s,r})
       0:q<=q;
       1:q<=0;
       2:q<=1;
       default:q<=1'bx;
     endcase
    end
  end
endmodule

module jk_flip_flop(input j,k,clk,rst,
                    output reg q);
  always@(posedge clk or posedge rst)begin
    if(rst)
      q<= 1'b0;
    else begin
      case ({j,k})
       0:q<=q;
       1:q<=0;
       2:q<=1;
       default:q<=~q;
     endcase
    end
  end
endmodule

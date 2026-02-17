module moore(input clk,rst,d,
             output reg dout);
  reg[2:0]state,next_state;
  
  localparam[2:0] 
             S0=3'b000,
             S1=3'b001,
             S2=3'b010,
             S3=3'b011,
             S4=3'b100;
  always@(posedge clk or posedge rst)begin
    if (rst)
      state<=S0;
    else
      state<=next_state;
  end
  always@(*)begin
    next_state=state;
    
      case (state)
        S0:next_state=d?S1:S0;
        S1:next_state=d?S1:S2;
        S2:next_state=d?S1:S3;
        S3:next_state=d?S4:S0;
        S4:next_state=d?S1:S2;
        default:next_state=S0;
      endcase
   end
 assign  dout=(state==S4);
endmodule

  

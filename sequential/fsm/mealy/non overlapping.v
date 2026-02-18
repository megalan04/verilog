//non overlapping
module mealy(input clk,rst,d,
             output reg dout);
  reg[1:0]state,next_state;
  localparam[1:0] S0=2'b00,
             S1=2'b01,
             S2=2'b10,
             S3=2'b11;
  always@(posedge clk or posedge rst)begin
    if (rst)
      state<=S0;
    else
      state<=next_state;
  end
  
  
  always@(*)begin
    next_state=state;
      case (state)
        S0:begin
            if (d)
              next_state = S1;
            else     
              next_state = S0;
        end
        S1:begin
            if (d) 
              next_state = S1;
            else    
              next_state = S2;
        end
        S2:begin
            if (d) 
              next_state=S1;
            else     
              next_state=S3;
        end
         S3:begin
           if (d)begin
                next_state=S0;
           end
              else 
                next_state=S0;
         end
      endcase
  end
   always @(posedge clk or posedge rst)begin
    if(rst)
      dout<=0;
     else if(state==S3)
       dout<=1'b1;
     else
      dout<=1'b0;
   end
endmodule

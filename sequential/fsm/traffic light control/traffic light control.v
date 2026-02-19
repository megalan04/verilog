// red=001(1)
//yellow=010(2)
//green=011(3)
module traffic_light(input clk,rst,
                     output reg [2:0]ns,ew,p_ns,p_ew);  
  reg [2:0]state,nxt_state;
  localparam s0=3'b000,
             s1=3'b001,
             s2=3'b010,
             s3=3'b011,
             s4=3'b100,
             s5=3'b101;
  integer timer;  
  always @(posedge clk or posedge rst ) begin
    if(rst) begin
      state<=s0;
      timer<=0;
    end
     else  begin
       timer<=timer+1;
       if(timer==2) begin
         state<=nxt_state;
         timer<=0;
       end
     end
  end
  always@(*) begin
        case(state)
          s0:
            nxt_state=s1;
          s1:
            nxt_state=s2;
          s2:
            nxt_state=s3;
          s3:
            nxt_state=s4;
          s4:
            nxt_state=s5;
          s5:
            nxt_state=s0;
          default:nxt_state=s0;
        endcase
      end      
  always@(posedge clk or posedge rst) begin
    if(rst) begin
        ns<=3'b001;// red
         ew<=3'b001;//red
         p_ns<=3'b001;//red
         p_ew<=3'b001;//red
    end 
    else begin    
        case(state)
          s0: begin
            ns<=3'b011;//green
            ew<=3'b001;//red
            p_ns<=3'b001;//red
            p_ew<=3'b011;//red
          end
          s1:begin
            ns<=3'b010;//yellow
            ew<=3'b001;//red
            p_ns<=3'b001;//red
            p_ew<=3'b001;//red
          end
          s2:begin
            ns<=3'b001;//red
            ew<=3'b001;//red
            p_ns<=3'b001;//red
            p_ew<=3'b001;//red
          end            
          s3:begin
            ns<=3'b001;//red
            ew<=3'b011;//green
            p_ns<=3'b001;//red
            p_ew<=3'b001;//red
          end           
          s4:begin
            ns<=3'b001;//red
            ew<=3'b010;//yellow
            p_ns<=3'b001;//red
            p_ew<=3'b001;//red
          end           
          s5:begin
            ns<=3'b001;//red
            ew<=3'b001;//red
            p_ns<=3'b011;//green
            p_ew<=3'b011;//green
          end 
          default:begin
            ns<=3'b001;//red
            ew<=3'b001;//red
            p_ns<=3'b001;//red
            p_ew<=3'b001;//red
          end            
        endcase
      end
  end
endmodule          

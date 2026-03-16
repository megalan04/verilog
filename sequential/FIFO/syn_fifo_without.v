module syn_fifo(input clk,
               rst,
               w_en,r_en,
               input[7:0]data_in,
               output reg [7:0] data_out
               );
  reg[7:0]mem[0:7];
  reg [3:0] wptr,rptr;
   wire full,empty;
  always@(posedge clk)begin
    if(rst)begin
      wptr<=3'b0;
      data_out<=3'b0;
    end
    else if(w_en && !full)begin
      mem[wptr[2:0]]<=data_in;
           wptr<=wptr+1;
    end
  end
   always@(posedge clk)begin
    if(rst)begin
      rptr<=3'b0;
      data_out<=8'b0;
    end
     else if(r_en && !empty)begin
       data_out<=mem[rptr[2:0]];
           rptr<=rptr+1;
    end
  end
  assign full=(wptr[3]!=rptr[3]) && (wptr[2:0]==rptr[2:0]);
  assign empty=(wptr==rptr);
endmodule

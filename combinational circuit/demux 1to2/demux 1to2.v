module demux1to2(input y,s,output [1:0]i);
  assign i[0]=~s&y;
  assign i[1]= s&y;
endmodule

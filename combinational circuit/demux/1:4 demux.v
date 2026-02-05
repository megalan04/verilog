module demux_1_4( input I,
    input  [1:0] s,
    output [3:0] y);
  assign y[0] = I & ~s[1] & ~s[0];
  assign y[1] = I & ~s[1] &  s[0];
  assign y[2] = I &  s[1] & ~s[0];
  assign y[3] = I &  s[1] &  s[0];
endmodule

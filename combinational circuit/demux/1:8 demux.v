module demux_1_8( input I,
                 input  [3:0] s,
                 output [7:0] y);
  assign y[7] = I & ~s[2] & ~s[1] & ~s[0];
  assign y[6] = I & ~s[2] & ~s[1] &  s[0];
  assign y[5] = I & ~s[2] &  s[1] & ~s[0];
  assign y[4] = I & ~s[2] &  s[1] &  s[0];
  assign y[3] = I &  s[2] & ~s[1] & ~s[0];
  assign y[2] = I &  s[2] & ~s[1] &  s[0];
  assign y[1] = I &  s[2] &  s[1] & ~s[0];
  assign y[0] = I &  s[2] &  s[1] &  s[0];

endmodule

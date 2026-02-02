module mux_2_1(input sel,i0,i1,
               output y);
  assign y=sel?i0:i1;
endmodule
module mux_4_1(input s0,s1,i0,i1,i2,i3,
               output out);
  wire y0,y1;
  mux_2_1 m1(s1,i0,i1,y0);
  mux_2_1 m2(s1,i2,i3,y1);
  mux_2_1 m3(s0,y0,y1,out);
endmodule

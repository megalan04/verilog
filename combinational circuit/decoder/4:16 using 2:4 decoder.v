module decoder_2_4(input[1:0]d,
                   input E,
                    output[3:0]y);
  assign y= E?1<<d:0;
endmodule

module decoder_4_16(input[3:0]d,
                   input en,
                    output[15:0]y);
  wire[3:0] E;
  decoder_2_4 d0(d[3:2],en,E);
  decoder_2_4 d1(d[1:0],E[0],y[3:0]);
  decoder_2_4 d2(d[1:0],E[1],y[7:4]);
  decoder_2_4 d3(d[1:0],E[2],y[11:8]);
  decoder_2_4 d4(d[1:0],E[3],y[15:12]);
endmodule

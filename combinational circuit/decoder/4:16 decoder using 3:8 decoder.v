module decoder_3_8(input[2:0]d,
                   input E,
                   output[7:0]y);
  assign y= E?1<<d:0;
endmodule

module decoder_4_16(input[3:0]d,
                   input en,
                    output[15:0]y);
  wire[3:0] E;
  decoder_3_8 d1(d[2:0],(en & ~d[3]),y[7:0]);
  decoder_3_8 d2(d[2:0],(en & d[3]),y[15:8]);
endmodule

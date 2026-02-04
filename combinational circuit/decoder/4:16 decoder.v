module decoder_4_16(input[3:0]d,
                   input E,
                    output[15:0]y);
  assign y= E?1<<d:0;
endmodule  

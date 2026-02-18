module octal_to_binary_encoder(input[7:0]d,
                               output reg[2:0]y);
  always@(*)begin
    case(d)
       8'b0000_0001:y=3'd0;
       8'b0000_0010:y=3'd1;
       8'b0000_0100:y=3'd2;
       8'b0000_1000:y=3'd3;
       8'b0001_0000:y=3'd4;
       8'b0010_0000:y=3'd5;
       8'b0100_0000:y=3'd6;
       8'b1000_0000:y=3'd7;
      default:$display("INVALID");
    endcase 
  end
endmodule
  

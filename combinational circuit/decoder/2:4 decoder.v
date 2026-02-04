module decoder(input[1:0]d,
               input E,
               output reg[3:0]y);
  always@(d or E)begin
    if(E==1)begin
    case(d)
      2'b00:y=4'b0001;
      2'b01:y=4'b0010;
      2'b10:y=4'b0100;
      2'b11:y=4'b1000;
      default:$display("INVALID");
    endcase
    endelse
      y=0;
  end
endmodule

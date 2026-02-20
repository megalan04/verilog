module rom_asyn(input clk,en,
               input[5:0]addr,
               output [3:0]dout);
  reg[7:0] mem[63:0];
  assign dout=en?mem[addr]:4'b0000;
 
  initial begin
    mem[0]=4'd4;
    mem[1]=4'd2;
    mem[2]=4'd0;
    mem[3]=4'd3;
    mem[4]=4'd13;
    mem[5]=4'd12;
    mem[6]=4'd11;
    mem[7]=4'd7;
    mem[8]=4'd13;
    mem[9]=4'd11;
    mem[10]=4'd10;
    mem[11]=4'd8;
    mem[12]=4'd2;
    mem[13]=4'd4;
    mem[14]=4'd5;
    mem[15]=4'd7;
    mem[16]=4'd11;
    mem[17]=4'd15;
    mem[18]=4'd14;
    mem[19]=4'd11;
    mem[20]=4'd10;
    mem[21]=4'd13;
    mem[22]=4'd11;
    mem[23]=4'd5;
    mem[24]=4'd2;
    mem[25]=4'd1;
    mem[26]=4'd6;
    mem[27]=4'd7;
    mem[28]=4'd8;
    mem[29]=4'd9;
    mem[30]=4'd0;
    mem[31]=4'd5;
    mem[32]=4'd6;
    mem[33]=4'd2;
    mem[34]=4'd7;
    mem[35]=4'd6;
    mem[36]=4'd13;
    mem[37]=4'd12;
    mem[38]=4'd10;
    mem[39]=4'd15;
    mem[40]=4'd13;
    mem[41]=4'd11;
    mem[42]=4'd10;
    mem[43]=4'd11;
    mem[44]=4'd14;
    mem[45]=4'd9;
    mem[46]=4'd11;
    mem[47]=4'd13;
    mem[48]=4'd14;
    mem[49]=4'd5;
    mem[50]=4'd1;
    mem[51]=4'd2;
    mem[52]=4'd3;
    mem[53]=4'd4;
    mem[54]=4'd5;
    mem[55]=4'd7;
    mem[56]=4'd8;
    mem[57]=4'd9;
    mem[58]=4'd10;
    mem[59]=4'd11;
    mem[60]=4'd12;
    mem[61]=4'd6;
    mem[62]=4'd4;
    mem[63]=4'd15;
  end
endmodule
   

module bcd_to_excess3(input [3:0]bin,
                      output reg [3:0]y);
    always @(*) begin
        y=bin+4'b0011;
    end
endmodule

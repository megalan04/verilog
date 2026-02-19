 module jk_latch (input  j, k, clk,output reg q);
  always @(*) begin
    if (clk)begin
        if (~j & ~k)
            q = q;       
        else if(~j & k)
            q = 1'b0;    
        else if(j & ~k)
            q = 1'b1;    
        else 
            q = ~q;
    end
      
end
endmodule

module jk_master_slave(input j,k,clk,rst,
                       output reg qm,qs);
  jk_latch master(.j(j),.k(k),.clk(clk),.q(qm));
  jk_latch slave(.j(qm),.k(~qm),.clk(~clk),.q(qs));
endmodule
  

module task_example_nonblocking;
    reg[7:0]a,b,c;
    reg[7:0]sum;
    task calculate_sum;
        input[7:0]x,y,z;
        output reg[7:0]total;  
        begin
            total=x+y+z;
        end
    endtask
    initial begin
        a=5;
        b=10;
        c=15;
        calculate_sum(a,b,c,sum);
        $display("Sum:%d",sum);
    end
endmodule

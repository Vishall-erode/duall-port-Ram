

module tb_orgduallport;

    
    reg clk;
    reg we_A, we_B;  
    reg [3:0] addr_A, addr_B; 
    reg [7:0] data_in_A, data_in_B;  
    wire [7:0] data_out_A, data_out_B;  

    
    orgduallport#(
        .DATA_WIDTH(8),
        .ADDR_WIDTH(4)
    ) uut (
        .clk(clk),
        .we_A(we_A),
        .we_B(we_B),
        .addr_A(addr_A),
        .addr_B(addr_B),
        .data_in_A(data_in_A),
        .data_in_B(data_in_B),
        .data_out_A(data_out_A),
        .data_out_B(data_out_B)
    );

  
   initial 
begin
clk = 1;

forever #5 clk = ~clk;
end

   
    initial begin
        
        clk = 0;
        we_A = 0;
        we_B = 0;
        addr_A = 0;
        addr_B = 0;
        data_in_A = 0;
        data_in_B = 0;


        #10; 
        we_A = 1; addr_A = 4'b0001; data_in_A = 8'hAA;  
        #10;  
        we_A = 0;  
        addr_A = 4'b0001; 
        #10;  
        $display("Port A Data Output: %h", data_out_A);  

     
        #10;  
        we_B = 1; addr_B = 4'b0010; data_in_B = 8'h55;  
        #10;  
        we_B = 0; 
        addr_B = 4'b0010;  
        #10;  
        $display("Port B Data Output: %h", data_out_B);  

        
        #10;  
        we_A = 1; addr_A = 4'b0011; data_in_A = 8'hFF;
        we_B = 1; addr_B = 4'b0100; data_in_B = 8'h77;  
        #10;  
        we_A = 0; addr_A = 4'b0011;  
        we_B = 0; addr_B = 4'b0100;  
        #10;  
        $display("Port A Data Output: %h", data_out_A);  
        $display("Port B Data Output: %h", data_out_B);  

       
        #10;
        $finish;
    end

endmodule

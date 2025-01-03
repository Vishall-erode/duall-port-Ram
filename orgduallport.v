module orgduallport #(
    parameter DATA_WIDTH = 8,       // Width of data bus
    parameter ADDR_WIDTH = 4       // Width of address bus
)(
  input wire clk,                // Clock signal
    input wire we_A, we_B,         // Write enable for port A and B
    input wire [ADDR_WIDTH-1:0] addr_A, addr_B,  // Address lines
    input wire [DATA_WIDTH-1:0] data_in_A, data_in_B,  // Data input for port A and B
    output reg [DATA_WIDTH-1:0] data_out_A, data_out_B // Data output for port A and B
);
reg[DATA_WIDTH-1:0] mem [15:0];

always@(posedge clk ) begin
 if(we_A) begin 
      mem[addr_A]<= data_in_A;
end
 else begin
        data_out_A <= mem[addr_A];
end
    end
always@(posedge clk ) begin
 if(we_B) begin 
      mem[addr_B]<= data_in_B;
end
 else begin
        data_out_B <= mem[addr_B];
end
    end
endmodule


  
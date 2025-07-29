module sync_rst_flipflop (

input wire clk,

input wire rst,

// Clock input

input wire d,

// Synchronous reset (active high)

output reg q

// Data input

);


always @(posedge clk) begin

if (rst)

q <= 1'b0;

else


q <= d;

// Otherwise, capture data input

end

endmodule

module async_rst_flipflop (

input wire clk,

// Clock input

input wire rst,

// Asynchronous reset (active high)

input wire d,

// Data input

output reg q

// Output

);

always @(posedge clk or posedge rst) begin

if (rst)

q <= 1'b0;

// Immediately reset output to 0

else

q <= d;

// Otherwise, capture data input on clock edge

end

endmodule

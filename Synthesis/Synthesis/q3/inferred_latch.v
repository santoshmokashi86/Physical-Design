module inferred_latch (

input wire en,

// Enable signal (latch is transparent when high)

input wire d,

// Data input

output reg q

// Latched output

);

always @(*) begin

if (en)

q = d;

// else

// When enabled, pass input to output

end

endmodule

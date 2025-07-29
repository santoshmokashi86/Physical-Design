module design_with_multipleclk(
  input  wire clk,
   input wire en,
  input  wire rst_n,   // async active-low reset
  input  wire d,
  output reg  q
);
  reg p, n;
  // posedge flop
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) p <= 1'b0;
    else         p <= d ^ n;
  end
  // negedge flop
  always @(negedge clk or negedge rst_n) begin
    if (!rst_n) n <= 1'b0;
    else         n <= d ^ p;
  end
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)        q <= 1'b0;
    else if (en)      q <= p;
    else               q <= n;
  end
endmodule

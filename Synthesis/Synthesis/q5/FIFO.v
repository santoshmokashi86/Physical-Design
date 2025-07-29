module fifo (
    input wire clk,
    input wire rst_n,
    
    input wire wr_en,             // Write enable
    input wire rd_en,             // Read enable
    input wire [7:0] din,         // 8-bit data input
    output reg [7:0] dout,        // 8-bit data output

    output wire full,
    output wire empty
);

    // Internal memory array of 16 entries
    reg [7:0] mem [0:15];

    // 5-bit pointers (extra bit to detect full/empty)
    reg [4:0] wr_ptr;
    reg [4:0] rd_ptr;

    // Full when MSBs differ and lower bits match
    assign full  = (wr_ptr[4] != rd_ptr[4]) && (wr_ptr[3:0] == rd_ptr[3:0]);

    // Empty when pointers are equal
    assign empty = (wr_ptr == rd_ptr);

    // Write logic
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            wr_ptr <= 0;
        else if (wr_en && !full) begin
            mem[wr_ptr[3:0]] <= din;
            wr_ptr <= wr_ptr + 1;
        end
    end

    // Read logic
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            rd_ptr <= 0;
        else if (rd_en && !empty) begin
            dout <= mem[rd_ptr[3:0]];
            rd_ptr <= rd_ptr + 1;
        end
    end

endmodule

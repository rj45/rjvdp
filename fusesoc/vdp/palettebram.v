`default_nettype none

module palettebram (
    input             clk,
    input             rst,
    input             pal_we,
    input      [9:0]  pal_adr,
    input      [15:0] pal_dat,
    input      [8:0]  pixel,

    output reg [23:0] colour
);

reg [23:0] mem [0:511];

initial $readmemh("./data/testpal.hex",mem);

always @(posedge clk) begin
  colour <= mem[pixel];
end

always @(posedge clk) begin
  if (pal_we) begin
    if (pal_adr[0])
      mem[pal_adr[9:1]][23:16] <= pal_dat[8:0];
    else
      mem[pal_adr[9:1]][15:0]  <= pal_dat;
  end
end


endmodule
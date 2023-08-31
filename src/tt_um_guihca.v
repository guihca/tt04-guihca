`default_nettype none

module tt_um_guihca #( parameter MAX_COUNT = 24'd10_000_000 ) (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);
    
wire [7:0]i,o,ioo,ioi;
assign i=ui_in;
assign ioi=uio_in;
assign uo_out=o;
assign uio_out=ioo;
assign uio_oe=8'd0;
assign ioo=8'd0;
//reg [63:0] ri;
//reg [5:0] con;
    assign o[7:1]=0;
    sky130_fd_sc_hd__mux2_1 mux0 (.A0(i[0]),.A1(i[1]),.S(i[2]),.Y(o[0]));
    //assign o=i+ioi;
  always @(posedge clk) begin
    
    //ri[con]<=i[0];
    //con<=con+1;
  end

endmodule

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:30:52 04/20/2026
// Design Name:   gating_top
// Module Name:   gating_top_tb.v
// Project Name:  cg_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gating_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module gating_top_tb;

reg clk;
reg reset;
reg enable;
reg data_in;

reg [31:0] op1, op2;
reg [2:0] sel;

wire clk_g;
wire [31:0] result;

gating_top uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .data_in(data_in),
    .op1(op1),
    .op2(op2),
    .sel(sel),
    .clk_g(clk_g),
    .result(result)
);

// Clock
always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    enable = 1;
    data_in = 0;
    op1 = 10;
    op2 = 5;
    sel = 3'b000;

    #10 reset = 0;

    // ADD active
    #10 data_in = 1; sel = 3'b000;

    // No change ? clock should stop
    #20 data_in = 1;

    // Change ? clock resumes
    #20 data_in = 0;

    // SUB operation
    #20 sel = 3'b001; data_in = 1;

    #50 $stop;
end

endmodule

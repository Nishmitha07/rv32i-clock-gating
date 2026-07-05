`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:37 04/20/2026 
// Design Name: 
// Module Name:    gating_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////module gating_top (
module gating_top (
    input clk,
    input reset,
    input enable,
    input data_in,

    input [31:0] op1,
    input [31:0] op2,
    input [2:0] sel,

    output clk_g,
    output [31:0] result
);

// -----------------------------
// Data-driven enable
// -----------------------------
wire dd_clk_en;

data_driven_clock_gating ddg (
    .clk(clk),
    .reset(reset),
    .data_in(data_in),
    .clk_en(dd_clk_en)
);

// -----------------------------
// Final enable
// -----------------------------
wire final_enable;
assign final_enable = enable & dd_clk_en;

// -----------------------------
// Clock gating
// -----------------------------
clock_gating cg (
    .clk(clk),
    .enable(final_enable),
    .clk_g(clk_g)
);

// -----------------------------
// Data gating
// -----------------------------
wire [31:0] add_op1, add_op2;
wire [31:0] sub_op1, sub_op2;

data_gating dg (
    .op1(op1),
    .op2(op2),
    .sel(sel),
    .add_op1(add_op1),
    .add_op2(add_op2),
    .sub_op1(sub_op1),
    .sub_op2(sub_op2)
);

// -----------------------------
// ALU
// -----------------------------
alu alu_inst (
    .op1(add_op1 | sub_op1),
    .op2(add_op2 | sub_op2),
    .sel(sel),
    .result(result)
);

endmodule

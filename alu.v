`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 12:35:04
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module alu(
    input [7:0] a,          // First 8-bit input operand
    input [7:0] b,          // Second 8-bit input operand
    input [2:0] op,         // 3-bit operation code
    output reg [7:0] result, // 8-bit output result
    output reg zero_flag    // Zero flag (1 when result is zero)
);

    // Operation codes
    parameter ADD = 3'b000;
    parameter SUB = 3'b001;
    parameter AND = 3'b010;
    parameter OR  = 3'b011;
    parameter NOT = 3'b100;

    always @(*) begin
        case(op)
            ADD: result = a + b;       // Addition
            SUB: result = a - b;       // Subtraction
            AND: result = a & b;       // Bitwise AND
            OR:  result = a | b;       // Bitwise OR
            NOT: result = ~a;          // Bitwise NOT (uses only operand a)
            default: result = 8'b0;    // Default case
        endcase
        
        // Set zero flag if result is zero
        zero_flag = (result == 8'b0) ? 1'b1 : 1'b0;
    end

endmodule
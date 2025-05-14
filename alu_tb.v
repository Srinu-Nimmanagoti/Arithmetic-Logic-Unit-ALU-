`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 12:36:09
// Design Name: 
// Module Name: alu_tb
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
`timescale 1ns/1ps

module alu_tb;
    // Inputs
    reg [7:0] a;
    reg [7:0] b;
    reg [2:0] op;
    
    // Outputs
    wire [7:0] result;
    wire zero_flag;
    
    // Instantiate the ALU
    alu uut (
        .a(a),
        .b(b),
        .op(op),
        .result(result),
        .zero_flag(zero_flag)
    );
    
    initial begin
        // Initialize Inputs
        a = 0;
        b = 0;
        op = 0;
        
        // Wait 10 ns for global reset
        #10;
        
        // Test ADD operation
        a = 8'd10;
        b = 8'd20;
        op = 3'b000; // ADD
        #10;
        $display("ADD TEST: %d + %d = %d (Zero Flag: %b)", a, b, result, zero_flag);
        
        // Test SUB operation
        a = 8'd30;
        b = 8'd15;
        op = 3'b001; // SUB
        #10;
        $display("SUB TEST: %d - %d = %d (Zero Flag: %b)", a, b, result, zero_flag);
        
        // Test AND operation
        a = 8'b10101010;
        b = 8'b11001100;
        op = 3'b010; // AND
        #10;
        $display("AND TEST: %b & %b = %b (Zero Flag: %b)", a, b, result, zero_flag);
        
        // Test OR operation
        a = 8'b10101010;
        b = 8'b11001100;
        op = 3'b011; // OR
        #10;
        $display("OR TEST:  %b | %b = %b (Zero Flag: %b)", a, b, result, zero_flag);
        
        // Test NOT operation
        a = 8'b10101010;
        op = 3'b100; // NOT
        #10;
        $display("NOT TEST: ~%b = %b (Zero Flag: %b)", a, result, zero_flag);
        
        // Test zero flag
        a = 8'd100;
        b = 8'd100;
        op = 3'b001; // SUB (100-100=0)
        #10;
        $display("ZERO FLAG TEST: %d - %d = %d (Zero Flag: %b)", a, b, result, zero_flag);
        
        // Finish simulation
        #10;
        $display("ALU TEST COMPLETE");
        $finish;
    end
    
endmodule
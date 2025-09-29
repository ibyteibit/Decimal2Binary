`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 04:51:42 PM
// Design Name: 
// Module Name: debouncer
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


module debouncer(
    input clk,
    input button,
    output reg clean
    );
    
    parameter MAX = 10000000; //10000000
    
    reg [32:0] counter;
    reg state;
    
    initial begin
        counter = 0;
        clean = 0;
        state = 0;
    end
    
    always @(posedge clk) begin
        if (state != button) begin
            counter = 0;
            state = button;
        end
        else counter = counter + 1;
        
        if (counter >= MAX) clean = state;
    end
    
    
endmodule

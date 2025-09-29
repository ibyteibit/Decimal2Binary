`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2025 07:09:00 PM
// Design Name: 
// Module Name: display_fsm
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


module display_fsm(
    input [7:0] number,
    input position,
    input clk,
    input reset
    );
    
    reg counter;
    
    initial counter = 0;
    
    always @(posedge clk) begin
        if (reset) 
            counter = 0;
        else begin
        if (counter == 7) counter = 0;
        else counter = counter + 1;
        end
    end
    
endmodule

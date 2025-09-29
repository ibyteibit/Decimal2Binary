`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2025 09:29:40 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
   
    input clk,
    input reset,
    output reg [7:0] anode,
    output reg [2:0] displayDigit);
    
    
    always @(posedge clk or posedge reset) begin
        if (reset) 
            displayDigit = 0;
        else begin
        if (displayDigit == 7) displayDigit = 0;
        else displayDigit = displayDigit + 1;
        end
    end
    
    always @(*) begin
    anode = 8'b11111111;
    case (displayDigit)
        3'd0: anode = 8'b11111110;
        3'd1: anode = 8'b11111101;
        3'd2: anode = 8'b11111011;
        3'd3: anode = 8'b11110111;
        3'd4: anode = 8'b11101111;
        3'd5: anode = 8'b11011111;
        3'd6: anode = 8'b10111111;
        3'd7: anode = 8'b01111111;
        default: anode = 8'b11111111;
    endcase
end
endmodule


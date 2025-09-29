`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2025 12:29:21 AM
// Design Name: 
// Module Name: pulser
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


module pulser(
    input clk,
    input in,
    output reg pulse
    );
    
    reg [31:0] counter;
    
    initial begin
        pulse = 0;
        counter = 0;
    end
    
    always @(posedge clk or posedge in) begin
        if (in) begin
            if (counter == 2) begin
                counter = 0;
                pulse = 1;
            end
        end
        else begin
            if (counter < 2) begin
                counter = counter + 1;
                if (counter == 2)
                    pulse = 0;
            end
        end
    end
    

    
endmodule

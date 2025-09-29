`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2025 12:36:08 PM
// Design Name: 
// Module Name: timer
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


module timer(
    input clk,
    input reset,
    input submit,
    input correct,
    output reg [15:0] LEDs,
    output reg [3:0] level,
    output reg numGen
    );
    
    reg [7:0] totalTime;
    wire secClk;
    reg [3:0] counter;
    reg [4:0] LEDpos;

    clk_divider_timer cdt(clk, secClk);
    
    initial begin 
        LEDs <= 16'd65535;
        counter = 0;
        level = 1;
        LEDpos = 0;
        totalTime = 32;
        numGen = 0;
    end
    
    always @(posedge secClk) begin
        
        if (submit && correct) begin
            LEDs <= 16'd65535;
            counter = 0;
            LEDpos = 0;
            
            if (level < 10) level = level + 1;
            else level = 1;
                        
            if (level <= 5) totalTime = 32;
            else totalTime = 64;

            numGen = 1;
            
            //$display("submitted! %0d", level);
        end
        else begin 
            numGen = 0;
            if (reset) begin
                //$display ("reset!");
                LEDs <= 16'd65535;
                counter = 0;
                level = 1;
                LEDpos = 0;
                totalTime = 32;
            end
            else begin
                counter = counter + 1;
                if (counter == totalTime/16) begin
                    counter = 0;
                    if (LEDpos < 16) begin
                        LEDs[LEDpos] = 0;
                        LEDpos = LEDpos + 1;
                    end
                    else begin
                        LEDs <= 16'd65535;
                        LEDpos = 0;
                        numGen = 1;
                    end
                end
            end
        end
    end
    
endmodule

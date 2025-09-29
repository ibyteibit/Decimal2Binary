`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2025 09:25:22 PM
// Design Name: 
// Module Name: score_to_BCD
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


module score_to_BCD(
input [3:0] binary,
output [3:0] bcd0,bcd1
    );
  
   assign bcd1 = binary/10;
   assign bcd0 = binary%10;
endmodule

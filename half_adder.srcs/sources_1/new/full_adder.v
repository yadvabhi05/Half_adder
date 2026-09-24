`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2026 13:56:24
// Design Name: 
// Module Name: full_adder
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


module full_adder(a,b,ci,cout,sum);
input a,b,ci;
output cout,sum;
wire c0,s0,c1;
half_adder A0 (a,b,c0,s0);
half_adder A1 (s0,ci,c1,sum);
assign cout=c0|c1;
endmodule

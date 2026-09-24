`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2026 14:27:48
// Design Name: 
// Module Name: R_adder_seventeen
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


module R_adder_seventeen(a,b,K,carry,Y);
input [16:0] a;
input [16:0] b;
output [16:0] Y;
input [2:0] K;
 reg [2:0] s;
wire  [16:3] sum;
output  carry;
reg  p0,p1,p2;
wire p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16;


//assign sum[0]= a[0]| b[0];
//assign sum[1]= a[1]|b[1];
//assign sum[2]= a[2]|b[2];
//assign sum[3]= a[3]|b[3];
always@(*)
begin
    p0=1'b0;
    p1=1'b0;
    p2=1'b0;
    s=3'b000;
    case (K)
    3'b000:  begin s[0]=a[0]^b[0]^1'b0; p0=a[0]&b[0]|b[0]&1'b0|1'b0&a[0];  s[1]=a[1]^b[1]^p0; p1=a[1]&b[1]|b[1]&p0|p0&a[1];
    s[2]=a[2]^b[2]^p1; p2=a[2]&b[2]|b[2]&p1|p1&a[2]; end
    3'b001:  begin s[0]= a[0]| b[0]; s[1]=a[1]^b[1]^1'b0; p1=a[1]&b[1]|b[1]&1'b0|1'b0&a[1];
    s[2]=a[2]^b[2]^p1; p2=a[2]&b[2]|b[2]&p1|p1&a[2]; end
    3'b010:  begin s[0]= a[0]| b[0];s[1]= a[1]|b[1];s[2]=a[2]^b[2]^1'b0; p2=a[2]&b[2]|b[2]&1'b0|1'b0&a[2]; end
    3'b011: begin s[0]= a[0]| b[0];s[1]= a[1]|b[1];s[2]= a[2]|b[2];end
    default:  begin s[0]=a[0]^b[0]^1'b0; p0=a[0]&b[0]|b[0]&1'b0|1'b0&a[0];  s[1]=a[1]^b[1]^p0; p1=a[1]&b[1]|b[1]&p0|p0&a[1];
    s[2]=a[2]^b[2]^p1; p2=a[2]&b[2]|b[2]&p1|p1&a[2]; end
    
    endcase


end

//half_adder H0 (a[0],b[0],p0,sum[0]);
//full_adder F1 (a[1],b[1],p0,p1,sum[1]);
//full_adder F2 (a[2],b[2],p1,p2,sum[2]);
full_adder F3 (a[3],b[3],p2,p3,sum[3]);

full_adder F4 (a[4],b[4],p3,p4,sum[4]);
full_adder F5 (a[5],b[5],p4,p5,sum[5]);
full_adder F6 (a[6],b[6],p5,p6,sum[6]);
full_adder F7 (a[7],b[7],p6,p7,sum[7]);
full_adder F8 (a[8],b[8],p7,p8,sum[8]);
full_adder F9 (a[9],b[9],p8,p9,sum[9]);
full_adder F10 (a[10],b[10],p9,p10,sum[10]);
full_adder F11 (a[11],b[11],p10,p11,sum[11]);
full_adder F12 (a[12],b[12],p11,p12,sum[12]);
full_adder F13 (a[13],b[13],p12,p13,sum[13]);
full_adder F14 (a[14],b[14],p13,p14,sum[14]);
full_adder F15 (a[15],b[15],p14,p15,sum[15]);
full_adder F16 (a[16],b[16],p15,carry,sum[16]);
assign Y={ sum,s};

endmodule

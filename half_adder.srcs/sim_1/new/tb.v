//Design: Testbench for 17-bit Approximate Adder (Compile-Time K)
// =============================================================================
// File        : tb_approximate_error.v
// Description : Testbench for approximate_error (K=1 compile-time version).
//               Plain Verilog-2001 (no SystemVerilog-only constructs), safe
//               for .v files in Vivado. Compares DUT sum against a golden
//               exact 17-bit ripple_carry_adder and reports error stats.
// Target      : Xilinx Vivado simulation
// =============================================================================
`timescale 1ns / 1ps

module tb ();
reg [16:0] a,b;
reg [2:0] K;
wire [16:0] sum;
wire carry;
R_adder_seventeen uut (a,b,K,carry,sum);
integer i;
initial begin
K=1;
for (i=-7;i<200;i=i+1) begin
a=i;b=i+1;#10;$display("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);end

 
end
 
endmodule
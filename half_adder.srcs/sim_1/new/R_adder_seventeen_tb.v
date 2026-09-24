`timescale 1ns / 1ps

module R_adder_seventeen_tb;

    // Testbench inputs
    reg [16:0] a;
    reg [16:0] b;

    // Testbench outputs
    wire [16:0] sum;
    wire carry;

    // Instantiate the 17-bit ripple carry adder
    R_adder_seventeen uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin

        // Test 1
        a = 17'd0;
        b = 17'd0;
        #10;

        // Test 2
        a = 17'd1;
        b = 17'd1;
        #10;

        // Test 3
        a = 17'd10;
        b = 17'd20;
        #10;

        // Test 4
        a = 17'd100;
        b = 17'd200;
        #10;

        // Test 5
        a = 17'd1000;
        b = 17'd2000;
        #10;

        // Test 6
        a = 17'd10000;
        b = 17'd20000;
        #10;

        // Test 7: Carry generation
        a = 17'd131071;
        b = 17'd1;
        #10;

        // Test 8: Maximum values
        a = 17'd131071;
        b = 17'd131071;
        #10;

        // Test 9
        a = 17'd12345;
        b = 17'd23456;
        #10;

        // Test 10
        a = 17'd50000;
        b = 17'd40000;
        #10;

        // Finish simulation
        $finish;

    end

    // Display results in simulation console
    initial begin
        $monitor("Time = %0t | A = %d | B = %d | Carry = %b | Sum = %d",
                 $time, a, b, carry, sum);
    end

endmodule

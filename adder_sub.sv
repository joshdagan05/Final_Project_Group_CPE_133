`timescale 1ns / 1ps

module adder_sub(
    input [3:0] A,          // 4-bit input number
    input [3:0] B,          // 4-bit number to add
    output [13:0] Sum       // 14-bit result to support larger values
);
    assign Sum = A + B;     // Perform addition and assign result

endmodule
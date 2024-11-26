`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly - SLO
// Engineer: Joshua Dagan
// 
// Create Date: 11/23/2024 07:56:28 PM
// Design Name: 
// Module Name: MNY_DCDR
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Sends 4-bit representation of the deposited money to accumulator. 
//  Options to deposite are $1, $5, and $10.
// 
//////////////////////////////////////////////////////////////////////////////////


module MNY_DCDR(
    input one_dollar,
    input five_dollar,
    input ten_dollar,
    output logic [3:0] MNY_DCDR_OUT
    );
    
    always_comb begin
        if (one_dollar)begin
            assign MNY_DCDR_OUT = 4'b0001;//1 in binary
        end
        else if (five_dollar)begin
            assign MNY_DCDR_OUT = 4'b0101;//5 in binary
        end
        else begin
            assign MNY_DCDR_OUT = 4'b1010;// 10 in binary
        end
        
    end
    
endmodule

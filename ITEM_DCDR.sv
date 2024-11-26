`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly - SLO
// Engineer: Joshua Dagan
// 
// Create Date: 11/23/2024 07:56:28 PM
// Design Name: 
// Module Name: ITEM_DCDR
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Decodes the high-input switch into a 4-bit representation of its price.
// 
//////////////////////////////////////////////////////////////////////////////////


module ITEM_DCDR(
    input CHIPS,
    input CANDY,
    input SODA,
    input WATER,
    output logic [3:0] ITEM_PRICE_OUT
    );
    
    always_comb begin
        if (CHIPS)begin
            assign ITEM_PRICE_OUT = 4'b0100;//4 in binary (price)
        end
        else if (CANDY)begin
            assign ITEM_PRICE_OUT = 4'b0010;//2 in binary (price)
        end
        else if (SODA)begin
            assign ITEM_PRICE_OUT = 4'b0011;// 3 in binary (price)
        end
        else if (WATER) begin
            assign ITEM_PRICE_OUT = 4'b0001;//1 in binary (price)
        end
    end
    
endmodule

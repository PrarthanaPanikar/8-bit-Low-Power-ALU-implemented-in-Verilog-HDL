`timescale 1ns / 1ps

module alu (
    input  [7:0] A,
    input  [7:0] B,
    input  [3:0] opcode,
    input        enable,

    output reg [7:0] result,
    output reg zero,
    output reg carry,
    output reg negative,
    output reg overflow
);

reg [8:0] temp;

always @(*) begin

    // Default values
    result   = 8'b00000000;
    zero     = 0;
    carry    = 0;
    negative = 0;
    overflow = 0;
    temp     = 9'b0;

    // Low-power concept
    // If enable = 0, ALU remains idle
    if(enable == 0) begin
        result = 8'b00000000;
    end

    else begin

        case(opcode)

            // ADD
            4'b0000: begin
                temp = A + B;
                result = temp[7:0];
                carry = temp[8];

                overflow =
                (~A[7] & ~B[7] & result[7]) |
                ( A[7] &  B[7] & ~result[7]);
            end

            // SUB
            4'b0001: begin
                temp = A - B;
                result = temp[7:0];
                carry = temp[8];

                overflow =
                (~A[7] & B[7] & result[7]) |
                ( A[7] & ~B[7] & ~result[7]);
            end

            // AND
            4'b0010:
                result = A & B;

            // OR
            4'b0011:
                result = A | B;

            // XOR
            4'b0100:
                result = A ^ B;

            // NOT A
            4'b0101:
                result = ~A;

            // Shift Left
            4'b0110:
                result = A << 1;

            // Shift Right
            4'b0111:
                result = A >> 1;

            // Increment
            4'b1000: begin
                temp = A + 1;
                result = temp[7:0];
                carry = temp[8];
            end

            // Decrement
            4'b1001: begin
                temp = A - 1;
                result = temp[7:0];
                carry = temp[8];
            end

            // Compare A and B
            4'b1010: begin

                if(A > B)
                    result = 8'b00000001;

                else if(A == B)
                    result = 8'b00000000;

                else
                    result = 8'b11111111;

            end

            default:
                result = 8'b00000000;

        endcase
    end

    // Zero Flag
    if(result == 8'b00000000)
        zero = 1;

    // Negative Flag
    negative = result[7];

end

endmodule
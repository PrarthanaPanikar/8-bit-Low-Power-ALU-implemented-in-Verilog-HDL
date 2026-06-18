`timescale 1ns / 1ps

module alu_tb;

reg [7:0] A;
reg [7:0] B;
reg [3:0] opcode;
reg enable;

wire [7:0] result;
wire zero;
wire carry;
wire negative;
wire overflow;

alu DUT (
    .A(A),
    .B(B),
    .opcode(opcode),
    .enable(enable),
    .result(result),
    .zero(zero),
    .carry(carry),
    .negative(negative),
    .overflow(overflow)
);

initial begin

    // Generate VCD file
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);

    $display("===== LOW POWER ALU TEST START =====");

    enable = 1;

    // ADD
    A = 8'd10;
    B = 8'd5;
    opcode = 4'b0000;
    #10;

    // SUB
    A = 8'd20;
    B = 8'd8;
    opcode = 4'b0001;
    #10;

    // AND
    A = 8'b11001100;
    B = 8'b10101010;
    opcode = 4'b0010;
    #10;

    // OR
    opcode = 4'b0011;
    #10;

    // XOR
    opcode = 4'b0100;
    #10;

    // NOT
    A = 8'b11110000;
    opcode = 4'b0101;
    #10;

    // Shift Left
    A = 8'b00001111;
    opcode = 4'b0110;
    #10;

    // Shift Right
    opcode = 4'b0111;
    #10;

    // Increment
    A = 8'd99;
    opcode = 4'b1000;
    #10;

    // Decrement
    opcode = 4'b1001;
    #10;

    // Compare A>B
    A = 8'd20;
    B = 8'd10;
    opcode = 4'b1010;
    #10;

    // Compare A=B
    A = 8'd15;
    B = 8'd15;
    opcode = 4'b1010;
    #10;

    // Compare A<B
    A = 8'd5;
    B = 8'd25;
    opcode = 4'b1010;
    #10;

    // Low Power Mode Check
    enable = 0;
    A = 8'd100;
    B = 8'd50;
    opcode = 4'b0000;
    #10;

    $display("===== TEST COMPLETE =====");

    $finish;

end

initial begin
    $monitor(
    "Time=%0t A=%d B=%d OPC=%b Result=%d Zero=%b Carry=%b Neg=%b Overflow=%b",
    $time,A,B,opcode,result,zero,carry,negative,overflow);
end

endmodule
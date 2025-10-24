module demux(
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output[3:0] lib, fire, school, rib
    );
    assign lib = Enable ? (Sel == 2'b00 ? In:0) : 0;
    assign fire = Enable ? (Sel == 2'b01 ? In:0) : 0;
    assign school = Enable ? (Sel == 2'b10 ? In:0) : 0;
    assign rib = Enable ? (Sel == 2'b11 ? In:0) : 0;
endmodule

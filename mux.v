module mux(
    input [1:0] Sel,
    input [3:0] CEO, You, Fred, Jill,
    input Enable,
    output [3:0] local_lib
);

    assign local_lib = Enable ? ((Sel==2'b00)?CEO:
                        (Sel==2'b01)?You:
                        (Sel==2'b10)?Fred:Jill) : 0;

endmodule
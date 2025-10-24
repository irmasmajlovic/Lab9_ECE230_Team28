module top(
    input [15:0] sw,
    input btnU, btnL, btnD, btnR, btnC,
    output [15:0] led
   );
   
   wire [3:0] wired;
   wire [1:0] muxSel;
   assign muxSel = {btnU,btnL};
   wire [1:0] demuxSel;
   assign demuxSel = {btnR,btnD};
   
   mux multiplexer(
   .Sel(muxSel),
   .CEO(sw[3:0]),
   .You(sw[7:4]),
   .Fred(sw[11:8]),
   .Jill(sw[15:12]),
   .Enable(btnC),
   .local_lib(wired)
   );
   
   demux demultiplexer(
   .Sel(demuxSel),
   .In(wired),
   .Enable(btnC),
   .lib(led[3:0]),
   .fire(led[7:4]),
   .school(led[11:8]),
   .rib(led[15:12])
   );
endmodule
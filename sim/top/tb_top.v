`default_nettype none

`timescale 1ps / 1ps
   
  module tb_top();

   localparam PERIOD_50MHz = 10000; //50MHz

   

   reg clk;
   reg xreset;
   

   always #(PERIOD_50MHz / 2) begin
      clk <= ~clk;
   end

   
   de10_nano_golden_top u_de10_nano_golden_top
     (
      .FPGA_CLK1_50(clk)

      );
   

   
   initial begin

      clk <= 0;
      xreset <= 1'b0;
      
      
      
      repeat(100) @(posedge clk);

      xreset <= 1'b1;



      repeat(100000) @(posedge clk);


      $finish;
       
   end

   
endmodule

`default_nettype wire
   

// ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~
// ~ --
// ~ Published by:   www.asic-digital-design.com
// ~ --
// ~ Description: This is clock generator model.
// ~ --
// ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~
//`timescale 1ps/1ps
module clock_gen ( clk, arst );
  output clk;
  input  arst;

  parameter param_time_end_of_sim   = 1000000;
  parameter param_clock_half_period = 50;
  reg clk_i;

  // clock generation
  initial begin
    {clk_i} <= 1'b0;
    #(param_time_end_of_sim) $finish;
  end
  //end initial

  always #(param_clock_half_period) {clk_i} <= ~(clk_i);

  // outputs --
  assign {clk}=clk_i;
  //--
endmodule

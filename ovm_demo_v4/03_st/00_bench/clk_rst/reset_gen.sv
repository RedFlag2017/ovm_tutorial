// ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~
// ~ --
// ~ Published by:   www.asic-digital-design.com
// ~ --
// ~ Description: This is reset generator model.
// ~ --
// ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~ ~~~~~~~~
//`timescale 1ps/1ps
module reset_gen ( arst );
  output arst;

  parameter param_reset_delay = 25;
  
  reg arst_i;

  // reset generation
  initial begin
                          {arst_i}<=1'b1;
    #(param_reset_delay)  {arst_i}<=1'b0;
  end
  //end initial

  // outputs --
  assign {arst}=arst_i;
  //--
endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Multiplexer_8                                                **
 **                                                                          **
 *****************************************************************************/

module Multiplexer_8( enable,
                      muxIn_0,
                      muxIn_1,
                      muxIn_2,
                      muxIn_3,
                      muxIn_4,
                      muxIn_5,
                      muxIn_6,
                      muxIn_7,
                      muxOut,
                      sel );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       enable;
   input       muxIn_0;
   input       muxIn_1;
   input       muxIn_2;
   input       muxIn_3;
   input       muxIn_4;
   input       muxIn_5;
   input       muxIn_6;
   input       muxIn_7;
   input [2:0] sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output muxOut;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   reg s_selected_vector;
   assign muxOut = s_selected_vector;

   always @(*)
   begin
      if (~enable) s_selected_vector <= 0;
      else case (sel)
         3'b000:
            s_selected_vector <= muxIn_0;
         3'b001:
            s_selected_vector <= muxIn_1;
         3'b010:
            s_selected_vector <= muxIn_2;
         3'b011:
            s_selected_vector <= muxIn_3;
         3'b100:
            s_selected_vector <= muxIn_4;
         3'b101:
            s_selected_vector <= muxIn_5;
         3'b110:
            s_selected_vector <= muxIn_6;
        default:
           s_selected_vector <= muxIn_7;
      endcase
   end

endmodule

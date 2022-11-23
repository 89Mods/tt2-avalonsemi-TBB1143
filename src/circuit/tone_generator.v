/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : tone_generator                                               **
 **                                                                          **
 *****************************************************************************/

module tone_generator( CLK,
                       DIN,
                       DOUT,
                       FCLK,
                       FCLK_16,
                       HHSEL,
                       HSEL,
                       LSEL,
                       RST_C );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input [3:0] DIN;
   input       FCLK;
   input       FCLK_16;
   input       HHSEL;
   input       HSEL;
   input       LSEL;
   input       RST_C;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [3:0] DOUT;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0] s_logisimBus2;
   wire [3:0] s_logisimBus26;
   wire [3:0] s_logisimBus8;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet18;
   wire       s_logisimNet19;
   wire       s_logisimNet20;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet4;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus2[3:0] = DIN;
   assign s_logisimNet1      = RST_C;
   assign s_logisimNet11     = CLK;
   assign s_logisimNet18     = LSEL;
   assign s_logisimNet21     = HHSEL;
   assign s_logisimNet25     = HSEL;
   assign s_logisimNet3      = FCLK_16;
   assign s_logisimNet7      = FCLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign DOUT = s_logisimBus26[3:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimNet30  =  1'b1;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet12),
               .input2(s_logisimBus8[0]),
               .result(s_logisimNet24));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet15),
               .input2(s_logisimBus8[0]),
               .result(s_logisimNet17));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet9),
               .input2(s_logisimBus8[0]),
               .result(s_logisimNet6));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_4 (.clock(s_logisimNet3),
                .d(s_logisimBus8[0]),
                .preset(1'b0),
                .q(s_logisimNet28),
                .qBar(),
                .reset(1'b0),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_5 (.clock(s_logisimNet10),
                .clockEnable(s_logisimNet30),
                .d(s_logisimBus8[3:0]),
                .q(s_logisimBus26[3:0]),
                .reset(1'b0),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_6 (.clock(s_logisimNet3),
                .d(s_logisimNet28),
                .preset(1'b0),
                .q(s_logisimNet12),
                .qBar(),
                .reset(1'b0),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_7 (.clock(s_logisimNet3),
                .d(s_logisimNet24),
                .preset(1'b0),
                .q(s_logisimNet15),
                .qBar(),
                .reset(1'b0),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_8 (.clock(s_logisimNet3),
                .d(s_logisimNet17),
                .preset(1'b0),
                .q(s_logisimNet23),
                .qBar(),
                .reset(1'b0),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_9 (.clock(s_logisimNet3),
                .d(s_logisimNet23),
                .preset(1'b0),
                .q(s_logisimNet9),
                .qBar(),
                .reset(1'b0),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_10 (.clock(s_logisimNet3),
                 .d(s_logisimNet6),
                 .preset(1'b0),
                 .q(s_logisimNet22),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_11 (.clock(s_logisimNet3),
                 .d(s_logisimNet22),
                 .preset(1'b0),
                 .q(s_logisimNet29),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_12 (.clock(s_logisimNet3),
                 .d(s_logisimNet29),
                 .preset(s_logisimNet1),
                 .q(s_logisimNet16),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_13 (.clock(s_logisimNet3),
                 .d(s_logisimNet16),
                 .preset(1'b0),
                 .q(s_logisimNet20),
                 .qBar(),
                 .reset(s_logisimNet1),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_14 (.clock(s_logisimNet3),
                 .d(s_logisimNet20),
                 .preset(s_logisimNet1),
                 .q(s_logisimBus8[3]),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_15 (.clock(s_logisimNet3),
                 .d(s_logisimBus8[3]),
                 .preset(1'b0),
                 .q(s_logisimNet19),
                 .qBar(),
                 .reset(s_logisimNet1),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_16 (.clock(s_logisimNet3),
                 .d(s_logisimNet19),
                 .preset(s_logisimNet1),
                 .q(s_logisimNet27),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_17 (.clock(s_logisimNet3),
                 .d(s_logisimNet27),
                 .preset(1'b0),
                 .q(s_logisimBus8[2]),
                 .qBar(),
                 .reset(s_logisimNet1),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_18 (.clock(s_logisimNet3),
                 .d(s_logisimBus8[2]),
                 .preset(s_logisimNet1),
                 .q(s_logisimNet13),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_19 (.clock(s_logisimNet3),
                 .d(s_logisimNet13),
                 .preset(s_logisimNet1),
                 .q(s_logisimBus8[1]),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_20 (.clock(s_logisimNet3),
                 .d(s_logisimBus8[1]),
                 .preset(1'b0),
                 .q(s_logisimBus8[0]),
                 .qBar(),
                 .reset(s_logisimNet1),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   tone_generator_2   tone_generator_2_1 (.CLK(s_logisimNet11),
                                          .DIN(s_logisimBus2[3:0]),
                                          .FCLK(s_logisimNet7),
                                          .FCLK_16(s_logisimNet3),
                                          .HHSEL(s_logisimNet21),
                                          .HSEL(s_logisimNet25),
                                          .LSEL(s_logisimNet18),
                                          .RST_C(s_logisimNet1),
                                          .SOUT(s_logisimNet10));

endmodule

/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 *****************************************************************************/

module main( A0,
             CLK,
             D0,
             D1,
             D2,
             D3,
             FCLK,
             RST,
             SOUT0,
             SOUT1,
             WR );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input A0;
   input CLK;
   input D0;
   input D1;
   input D2;
   input D3;
   input FCLK;
   input RST;
   input WR;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output SOUT0;
   output SOUT1;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [1:0] s_logisimBus1;
   wire [2:0] s_logisimBus18;
   wire [3:0] s_logisimBus20;
   wire [2:0] s_logisimBus21;
   wire [2:0] s_logisimBus31;
   wire [2:0] s_logisimBus40;
   wire       s_logisimNet0;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet26;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet4;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet43;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus20[0] = s_logisimNet2;
   assign s_logisimBus20[1] = s_logisimNet16;
   assign s_logisimBus20[2] = s_logisimNet3;
   assign s_logisimBus21[0] = s_logisimNet24;
   assign s_logisimBus21[1] = s_logisimNet24;
   assign s_logisimBus21[2] = s_logisimNet24;
   assign s_logisimBus31[0] = s_logisimNet2;
   assign s_logisimBus31[1] = s_logisimNet16;
   assign s_logisimBus31[2] = s_logisimNet3;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus20[3] = D3;
   assign s_logisimNet0     = CLK;
   assign s_logisimNet16    = D1;
   assign s_logisimNet2     = D0;
   assign s_logisimNet26    = RST;
   assign s_logisimNet28    = WR;
   assign s_logisimNet29    = FCLK;
   assign s_logisimNet3     = D2;
   assign s_logisimNet9     = A0;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign SOUT0 = s_logisimNet37;
   assign SOUT1 = s_logisimNet30;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimNet43  =  1'b1;


   // NOT Gate
   assign s_logisimNet35 = ~s_logisimNet9;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(3))
      GATES_1 (.input1(s_logisimBus40[2:0]),
               .input2(s_logisimBus21[2:0]),
               .result(s_logisimBus18[2:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet42),
               .input2(s_logisimBus1[1]),
               .result(s_logisimNet37));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet39),
               .input2(s_logisimBus1[0]),
               .result(s_logisimNet30));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet29),
               .input2(s_logisimNet15),
               .result(s_logisimNet19));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet0),
               .input2(s_logisimNet26),
               .result(s_logisimNet10));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet35),
               .input2(s_logisimNet28),
               .result(s_logisimNet41));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet28),
               .input2(s_logisimNet9),
               .result(s_logisimNet24));

   Demultiplexer_8   PLEXERS_8 (.demuxIn(s_logisimNet43),
                                .demuxOut_0(),
                                .demuxOut_1(s_logisimNet17),
                                .demuxOut_2(s_logisimNet23),
                                .demuxOut_3(s_logisimNet11),
                                .demuxOut_4(s_logisimNet36),
                                .demuxOut_5(s_logisimNet32),
                                .demuxOut_6(s_logisimNet33),
                                .demuxOut_7(s_logisimNet34),
                                .enable(1'b1),
                                .sel(s_logisimBus18[2:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(2))
      MEMORY_9 (.clock(s_logisimNet0),
                .clockEnable(s_logisimNet34),
                .d(s_logisimBus31[1:0]),
                .q(s_logisimBus1[1:0]),
                .reset(s_logisimNet10),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_10 (.clock(s_logisimNet8),
                 .d(s_logisimNet12),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet12),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_11 (.clock(s_logisimNet12),
                 .d(s_logisimNet4),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet4),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_12 (.clock(s_logisimNet4),
                 .d(s_logisimNet14),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet14),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_13 (.clock(s_logisimNet14),
                 .d(s_logisimNet6),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet6),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_14 (.clock(s_logisimNet6),
                 .d(s_logisimNet15),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet15),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_15 (.clock(s_logisimNet19),
                 .d(s_logisimNet7),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet7),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_16 (.clock(s_logisimNet7),
                 .d(s_logisimNet13),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet13),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_17 (.clock(s_logisimNet13),
                 .d(s_logisimNet8),
                 .preset(1'b0),
                 .q(s_logisimNet5),
                 .qBar(s_logisimNet8),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(3))
      MEMORY_18 (.clock(s_logisimNet0),
                 .clockEnable(s_logisimNet41),
                 .d(s_logisimBus31[2:0]),
                 .q(s_logisimBus40[2:0]),
                 .reset(1'b0),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   tone_generator_2   tone_generator_2_2 (.CLK(s_logisimNet0),
                                          .DIN(s_logisimBus20[3:0]),
                                          .FCLK(s_logisimNet19),
                                          .FCLK_16(s_logisimNet5),
                                          .HHSEL(s_logisimNet33),
                                          .HSEL(s_logisimNet32),
                                          .LSEL(s_logisimNet36),
                                          .RST_C(s_logisimNet10),
                                          .SOUT(s_logisimNet42));

   tone_generator_2   tone_generator_2_1 (.CLK(s_logisimNet0),
                                          .DIN(s_logisimBus20[3:0]),
                                          .FCLK(s_logisimNet19),
                                          .FCLK_16(s_logisimNet5),
                                          .HHSEL(s_logisimNet11),
                                          .HSEL(s_logisimNet23),
                                          .LSEL(s_logisimNet17),
                                          .RST_C(s_logisimNet10),
                                          .SOUT(s_logisimNet39));

endmodule

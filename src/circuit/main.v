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
             T0,
             T1,
             T2,
             T3,
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
   output T0;
   output T1;
   output T2;
   output T3;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [2:0] s_logisimBus1;
   wire [3:0] s_logisimBus19;
   wire [3:0] s_logisimBus23;
   wire [3:0] s_logisimBus25;
   wire [3:0] s_logisimBus43;
   wire [3:0] s_logisimBus51;
   wire       s_logisimNet0;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet18;
   wire       s_logisimNet2;
   wire       s_logisimNet20;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet24;
   wire       s_logisimNet26;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet4;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet44;
   wire       s_logisimNet45;
   wire       s_logisimNet46;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet49;
   wire       s_logisimNet5;
   wire       s_logisimNet50;
   wire       s_logisimNet52;
   wire       s_logisimNet53;
   wire       s_logisimNet54;
   wire       s_logisimNet55;
   wire       s_logisimNet56;
   wire       s_logisimNet57;
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
   assign s_logisimBus23[0] = s_logisimNet28;
   assign s_logisimBus23[1] = s_logisimNet45;
   assign s_logisimBus23[2] = s_logisimNet12;
   assign s_logisimBus23[3] = s_logisimNet26;
   assign s_logisimBus25[0] = s_logisimNet32;
   assign s_logisimBus25[1] = s_logisimNet32;
   assign s_logisimBus25[2] = s_logisimNet32;
   assign s_logisimBus25[3] = s_logisimNet32;
   assign s_logisimBus43[0] = s_logisimNet28;
   assign s_logisimBus43[1] = s_logisimNet45;
   assign s_logisimBus43[2] = s_logisimNet12;
   assign s_logisimBus43[3] = s_logisimNet26;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet0  = CLK;
   assign s_logisimNet12 = D2;
   assign s_logisimNet13 = A0;
   assign s_logisimNet26 = D3;
   assign s_logisimNet28 = D0;
   assign s_logisimNet34 = RST;
   assign s_logisimNet37 = WR;
   assign s_logisimNet40 = FCLK;
   assign s_logisimNet45 = D1;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign SOUT0 = s_logisimNet49;
   assign SOUT1 = s_logisimNet42;
   assign T0    = s_logisimNet29;
   assign T1    = s_logisimNet56;
   assign T2    = s_logisimNet53;
   assign T3    = s_logisimNet48;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet44 = ~s_logisimNet13;

   // Constant
   assign  s_logisimNet57  =  1'b1;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(4))
      GATES_1 (.input1(s_logisimBus51[3:0]),
               .input2(s_logisimBus25[3:0]),
               .result(s_logisimBus19[3:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet55),
               .input2(s_logisimBus1[0]),
               .result(s_logisimNet49));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet50),
               .input2(s_logisimBus1[1]),
               .result(s_logisimNet42));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet40),
               .input2(s_logisimNet5),
               .result(s_logisimNet21));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet0),
               .input2(s_logisimNet34),
               .result(s_logisimNet14));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet44),
               .input2(s_logisimNet37),
               .result(s_logisimNet54));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet37),
               .input2(s_logisimNet13),
               .result(s_logisimNet32));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(3))
      MEMORY_8 (.clock(s_logisimNet0),
                .clockEnable(s_logisimNet41),
                .d(s_logisimBus43[2:0]),
                .q(s_logisimBus1[2:0]),
                .reset(s_logisimNet14),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_9 (.clock(s_logisimNet11),
                .d(s_logisimNet15),
                .preset(1'b0),
                .q(s_logisimNet8),
                .qBar(s_logisimNet15),
                .reset(s_logisimNet0),
                .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_10 (.clock(s_logisimNet15),
                 .d(s_logisimNet7),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet7),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_11 (.clock(s_logisimNet7),
                 .d(s_logisimNet17),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet17),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_12 (.clock(s_logisimNet17),
                 .d(s_logisimNet9),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet9),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_13 (.clock(s_logisimNet9),
                 .d(s_logisimNet18),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet18),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_14 (.clock(s_logisimNet21),
                 .d(s_logisimNet10),
                 .preset(1'b0),
                 .q(s_logisimNet22),
                 .qBar(s_logisimNet10),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_15 (.clock(s_logisimNet10),
                 .d(s_logisimNet16),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet16),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_16 (.clock(s_logisimNet16),
                 .d(s_logisimNet11),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet11),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_17 (.clock(s_logisimNet0),
                 .clockEnable(s_logisimNet54),
                 .d(s_logisimBus43[3:0]),
                 .q(s_logisimBus51[3:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   Demultiplexer_16   PLEXERS_18 (.demuxIn(s_logisimNet57),
                                  .demuxOut_0(),
                                  .demuxOut_1(s_logisimNet3),
                                  .demuxOut_10(),
                                  .demuxOut_11(),
                                  .demuxOut_12(),
                                  .demuxOut_13(),
                                  .demuxOut_14(),
                                  .demuxOut_15(s_logisimNet41),
                                  .demuxOut_2(s_logisimNet39),
                                  .demuxOut_3(s_logisimNet35),
                                  .demuxOut_4(s_logisimNet2),
                                  .demuxOut_5(s_logisimNet52),
                                  .demuxOut_6(s_logisimNet31),
                                  .demuxOut_7(s_logisimNet47),
                                  .demuxOut_8(s_logisimNet36),
                                  .demuxOut_9(s_logisimNet6),
                                  .enable(1'b1),
                                  .sel(s_logisimBus19[3:0]));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_19 (.clock(s_logisimNet18),
                 .d(s_logisimNet5),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet5),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_20 (.input1(s_logisimNet24),
                .input2(s_logisimBus1[2]),
                .result(s_logisimNet29));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_21 (.input1(s_logisimNet27),
                .input2(s_logisimBus1[2]),
                .result(s_logisimNet56));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_22 (.input1(s_logisimNet46),
                .input2(s_logisimBus1[2]),
                .result(s_logisimNet53));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_23 (.input1(s_logisimNet20),
                .input2(s_logisimBus1[2]),
                .result(s_logisimNet48));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   tone_generator_2   tone_generator_2_2 (.CLK(s_logisimNet0),
                                          .DIN(s_logisimBus23[3:0]),
                                          .FCLK(s_logisimNet21),
                                          .FCLK_16(s_logisimNet8),
                                          .HHSEL(s_logisimNet35),
                                          .HSEL(s_logisimNet39),
                                          .LSEL(s_logisimNet3),
                                          .RST_C(s_logisimNet14),
                                          .SOUT(s_logisimNet55));

   tone_generator_2   tone_generator_2_1 (.CLK(s_logisimNet0),
                                          .DIN(s_logisimBus23[3:0]),
                                          .FCLK(s_logisimNet21),
                                          .FCLK_16(s_logisimNet8),
                                          .HHSEL(s_logisimNet31),
                                          .HSEL(s_logisimNet52),
                                          .LSEL(s_logisimNet2),
                                          .RST_C(s_logisimNet14),
                                          .SOUT(s_logisimNet50));

   triangle_wave_generator   triangle_wave_generator_1 (.CLK(s_logisimNet0),
                                                        .D0(s_logisimNet24),
                                                        .D1(s_logisimNet27),
                                                        .D2(s_logisimNet46),
                                                        .D3(s_logisimNet20),
                                                        .DIN(s_logisimBus23[3:0]),
                                                        .FCLK(s_logisimNet21),
                                                        .FCLK_16(s_logisimNet22),
                                                        .HHSEL(s_logisimNet6),
                                                        .HSEL(s_logisimNet36),
                                                        .LSEL(s_logisimNet47),
                                                        .RST_C(s_logisimNet14));

endmodule

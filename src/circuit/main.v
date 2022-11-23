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
             S0,
             S1,
             S2,
             S3,
             S4,
             S5,
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
   output S0;
   output S1;
   output S2;
   output S3;
   output S4;
   output S5;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0] s_logisimBus1;
   wire [3:0] s_logisimBus23;
   wire [3:0] s_logisimBus3;
   wire [3:0] s_logisimBus31;
   wire [3:0] s_logisimBus39;
   wire [5:0] s_logisimBus53;
   wire [5:0] s_logisimBus54;
   wire [3:0] s_logisimBus63;
   wire [5:0] s_logisimBus66;
   wire [3:0] s_logisimBus69;
   wire [3:0] s_logisimBus75;
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
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet20;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet26;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet30;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet4;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet43;
   wire       s_logisimNet44;
   wire       s_logisimNet45;
   wire       s_logisimNet46;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet49;
   wire       s_logisimNet5;
   wire       s_logisimNet50;
   wire       s_logisimNet52;
   wire       s_logisimNet55;
   wire       s_logisimNet56;
   wire       s_logisimNet57;
   wire       s_logisimNet58;
   wire       s_logisimNet59;
   wire       s_logisimNet6;
   wire       s_logisimNet60;
   wire       s_logisimNet61;
   wire       s_logisimNet62;
   wire       s_logisimNet64;
   wire       s_logisimNet65;
   wire       s_logisimNet67;
   wire       s_logisimNet68;
   wire       s_logisimNet7;
   wire       s_logisimNet70;
   wire       s_logisimNet71;
   wire       s_logisimNet72;
   wire       s_logisimNet73;
   wire       s_logisimNet74;
   wire       s_logisimNet76;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus1[0]  = s_logisimNet34;
   assign s_logisimBus1[1]  = s_logisimNet59;
   assign s_logisimBus1[2]  = s_logisimNet15;
   assign s_logisimBus1[3]  = s_logisimNet32;
   assign s_logisimBus31[0] = s_logisimNet38;
   assign s_logisimBus31[1] = s_logisimNet38;
   assign s_logisimBus31[2] = s_logisimNet38;
   assign s_logisimBus31[3] = s_logisimNet38;
   assign s_logisimBus39[0] = s_logisimNet34;
   assign s_logisimBus39[1] = s_logisimNet59;
   assign s_logisimBus39[2] = s_logisimNet15;
   assign s_logisimBus39[3] = s_logisimNet32;
   assign s_logisimBus75[0] = s_logisimNet45;
   assign s_logisimBus75[1] = s_logisimNet45;
   assign s_logisimBus75[2] = s_logisimNet45;
   assign s_logisimBus75[3] = s_logisimNet45;
   assign s_logisimNet45    = s_logisimBus3[3];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet0  = CLK;
   assign s_logisimNet15 = D2;
   assign s_logisimNet16 = A0;
   assign s_logisimNet32 = D3;
   assign s_logisimNet34 = D0;
   assign s_logisimNet40 = RST;
   assign s_logisimNet44 = WR;
   assign s_logisimNet50 = FCLK;
   assign s_logisimNet59 = D1;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign S0 = s_logisimBus53[0];
   assign S1 = s_logisimBus53[1];
   assign S2 = s_logisimBus53[2];
   assign S3 = s_logisimBus53[3];
   assign S4 = s_logisimBus53[4];
   assign S5 = s_logisimBus53[5];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimNet76  =  1'b1;


   // NOT Gate
   assign s_logisimNet58 = ~s_logisimNet16;

   // Constant
   assign  s_logisimNet72  =  1'b0;


   // Do not connect

   // Constant
   assign  s_logisimBus54[5:4]  =  2'b00;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(4))
      GATES_1 (.input1(s_logisimBus69[3:0]),
               .input2(s_logisimBus31[3:0]),
               .result(s_logisimBus23[3:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet74),
               .input2(s_logisimBus3[0]),
               .result(s_logisimNet7));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet67),
               .input2(s_logisimBus3[1]),
               .result(s_logisimNet52));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet30),
               .input2(s_logisimBus3[2]),
               .result(s_logisimBus66[0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet33),
               .input2(s_logisimBus3[2]),
               .result(s_logisimBus66[1]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet60),
               .input2(s_logisimBus3[2]),
               .result(s_logisimBus66[2]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet26),
               .input2(s_logisimBus3[2]),
               .result(s_logisimBus66[3]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet50),
               .input2(s_logisimNet8),
               .result(s_logisimNet2));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet0),
               .input2(s_logisimNet40),
               .result(s_logisimNet17));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet58),
                .input2(s_logisimNet44),
                .result(s_logisimNet73));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet44),
                .input2(s_logisimNet16),
                .result(s_logisimNet38));

   Demultiplexer_16   PLEXERS_12 (.demuxIn(s_logisimNet76),
                                  .demuxOut_0(),
                                  .demuxOut_1(s_logisimNet5),
                                  .demuxOut_10(s_logisimNet36),
                                  .demuxOut_11(s_logisimNet24),
                                  .demuxOut_12(s_logisimNet65),
                                  .demuxOut_13(),
                                  .demuxOut_14(),
                                  .demuxOut_15(s_logisimNet49),
                                  .demuxOut_2(s_logisimNet46),
                                  .demuxOut_3(s_logisimNet41),
                                  .demuxOut_4(s_logisimNet4),
                                  .demuxOut_5(s_logisimNet70),
                                  .demuxOut_6(s_logisimNet37),
                                  .demuxOut_7(s_logisimNet62),
                                  .demuxOut_8(s_logisimNet43),
                                  .demuxOut_9(s_logisimNet9),
                                  .enable(1'b1),
                                  .sel(s_logisimBus23[3:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_13 (.clock(s_logisimNet0),
                 .clockEnable(s_logisimNet49),
                 .d(s_logisimBus39[3:0]),
                 .q(s_logisimBus3[3:0]),
                 .reset(s_logisimNet17),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_14 (.clock(s_logisimNet14),
                 .d(s_logisimNet18),
                 .preset(1'b0),
                 .q(s_logisimNet10),
                 .qBar(s_logisimNet18),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_15 (.clock(s_logisimNet18),
                 .d(s_logisimNet11),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet11),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_16 (.clock(s_logisimNet11),
                 .d(s_logisimNet20),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet20),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_17 (.clock(s_logisimNet20),
                 .d(s_logisimNet12),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet12),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_18 (.clock(s_logisimNet12),
                 .d(s_logisimNet21),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet21),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_19 (.clock(s_logisimNet21),
                 .d(s_logisimNet8),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet8),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_20 (.clock(s_logisimNet2),
                 .d(s_logisimNet13),
                 .preset(1'b0),
                 .q(s_logisimNet29),
                 .qBar(s_logisimNet13),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_21 (.clock(s_logisimNet13),
                 .d(s_logisimNet19),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet19),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_22 (.clock(s_logisimNet19),
                 .d(s_logisimNet14),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet14),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_23 (.clock(s_logisimNet0),
                 .clockEnable(s_logisimNet73),
                 .d(s_logisimBus39[3:0]),
                 .q(s_logisimBus69[3:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_24 (.input1(s_logisimNet7),
                .input2(s_logisimNet52),
                .result(s_logisimBus66[4]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_25 (.input1(s_logisimNet7),
                .input2(s_logisimNet52),
                .result(s_logisimBus66[5]));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(4))
      GATES_26 (.input1(s_logisimBus63[3:0]),
                .input2(s_logisimBus75[3:0]),
                .result(s_logisimBus54[3:0]));

   Adder #(.extendedBits(7),
           .nrOfBits(6))
      ARITH_27 (.carryIn(s_logisimNet72),
                .carryOut(s_logisimNet27),
                .dataA(s_logisimBus66[5:0]),
                .dataB(s_logisimBus54[5:0]),
                .result(s_logisimBus53[5:0]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   tone_generator_2   tone_generator_2_2 (.CLK(s_logisimNet0),
                                          .DIN(s_logisimBus1[3:0]),
                                          .FCLK(s_logisimNet2),
                                          .FCLK_16(s_logisimNet10),
                                          .HHSEL(s_logisimNet41),
                                          .HSEL(s_logisimNet46),
                                          .LSEL(s_logisimNet5),
                                          .RST_C(s_logisimNet17),
                                          .SOUT(s_logisimNet74));

   tone_generator_2   tone_generator_2_1 (.CLK(s_logisimNet0),
                                          .DIN(s_logisimBus1[3:0]),
                                          .FCLK(s_logisimNet2),
                                          .FCLK_16(s_logisimNet10),
                                          .HHSEL(s_logisimNet37),
                                          .HSEL(s_logisimNet70),
                                          .LSEL(s_logisimNet4),
                                          .RST_C(s_logisimNet17),
                                          .SOUT(s_logisimNet67));

   triangle_wave_generator   triangle_wave_generator_1 (.CLK(s_logisimNet0),
                                                        .D0(s_logisimNet30),
                                                        .D1(s_logisimNet33),
                                                        .D2(s_logisimNet60),
                                                        .D3(s_logisimNet26),
                                                        .DIN(s_logisimBus1[3:0]),
                                                        .FCLK(s_logisimNet2),
                                                        .FCLK_16(s_logisimNet29),
                                                        .HHSEL(s_logisimNet9),
                                                        .HSEL(s_logisimNet43),
                                                        .LSEL(s_logisimNet62),
                                                        .RST_C(s_logisimNet17));

   tone_generator   tone_generator_1 (.CLK(s_logisimNet0),
                                      .DIN(s_logisimBus1[3:0]),
                                      .DOUT(s_logisimBus63[3:0]),
                                      .FCLK(s_logisimNet2),
                                      .FCLK_16(s_logisimNet29),
                                      .HHSEL(s_logisimNet65),
                                      .HSEL(s_logisimNet24),
                                      .LSEL(s_logisimNet36),
                                      .RST_C(s_logisimNet17));

endmodule

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
             LED0,
             LED1,
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
   output LED0;
   output LED1;
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
   wire [3:0] s_logisimBus26;
   wire [3:0] s_logisimBus35;
   wire [3:0] s_logisimBus4;
   wire [3:0] s_logisimBus42;
   wire [5:0] s_logisimBus56;
   wire [5:0] s_logisimBus57;
   wire [3:0] s_logisimBus67;
   wire [5:0] s_logisimBus70;
   wire [3:0] s_logisimBus73;
   wire [3:0] s_logisimBus79;
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
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet43;
   wire       s_logisimNet44;
   wire       s_logisimNet45;
   wire       s_logisimNet46;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet49;
   wire       s_logisimNet5;
   wire       s_logisimNet50;
   wire       s_logisimNet51;
   wire       s_logisimNet52;
   wire       s_logisimNet54;
   wire       s_logisimNet55;
   wire       s_logisimNet58;
   wire       s_logisimNet59;
   wire       s_logisimNet6;
   wire       s_logisimNet60;
   wire       s_logisimNet61;
   wire       s_logisimNet62;
   wire       s_logisimNet63;
   wire       s_logisimNet64;
   wire       s_logisimNet65;
   wire       s_logisimNet66;
   wire       s_logisimNet68;
   wire       s_logisimNet69;
   wire       s_logisimNet7;
   wire       s_logisimNet71;
   wire       s_logisimNet72;
   wire       s_logisimNet74;
   wire       s_logisimNet75;
   wire       s_logisimNet76;
   wire       s_logisimNet77;
   wire       s_logisimNet78;
   wire       s_logisimNet8;
   wire       s_logisimNet81;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus1[0]  = s_logisimNet33;
   assign s_logisimBus1[1]  = s_logisimNet62;
   assign s_logisimBus1[2]  = s_logisimNet17;
   assign s_logisimBus1[3]  = s_logisimNet36;
   assign s_logisimBus35[0] = s_logisimNet41;
   assign s_logisimBus35[1] = s_logisimNet41;
   assign s_logisimBus35[2] = s_logisimNet41;
   assign s_logisimBus35[3] = s_logisimNet41;
   assign s_logisimBus42[0] = s_logisimNet33;
   assign s_logisimBus42[1] = s_logisimNet62;
   assign s_logisimBus42[2] = s_logisimNet17;
   assign s_logisimBus42[3] = s_logisimNet36;
   assign s_logisimBus79[0] = s_logisimNet48;
   assign s_logisimBus79[1] = s_logisimNet48;
   assign s_logisimBus79[2] = s_logisimNet48;
   assign s_logisimBus79[3] = s_logisimNet48;
   assign s_logisimNet48    = s_logisimBus4[3];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet0  = CLK;
   assign s_logisimNet17 = D2;
   assign s_logisimNet18 = A0;
   assign s_logisimNet33 = D0;
   assign s_logisimNet36 = D3;
   assign s_logisimNet43 = RST;
   assign s_logisimNet47 = WR;
   assign s_logisimNet54 = FCLK;
   assign s_logisimNet62 = D1;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign LED0 = s_logisimNet66;
   assign LED1 = s_logisimNet2;
   assign S0   = s_logisimBus56[0];
   assign S1   = s_logisimBus56[1];
   assign S2   = s_logisimBus56[2];
   assign S3   = s_logisimBus56[3];
   assign S4   = s_logisimBus56[4];
   assign S5   = s_logisimBus56[5];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimNet81  =  1'b1;


   // Constant
   assign  s_logisimBus57[5:4]  =  2'b00;


   // Constant
   assign  s_logisimNet76  =  1'b0;


   // Do not connect

   // NOT Gate
   assign s_logisimNet61 = ~s_logisimNet18;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(4))
      GATES_1 (.input1(s_logisimBus73[3:0]),
               .input2(s_logisimBus35[3:0]),
               .result(s_logisimBus26[3:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet78),
               .input2(s_logisimBus4[0]),
               .result(s_logisimNet9));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet71),
               .input2(s_logisimBus4[1]),
               .result(s_logisimNet55));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(4))
      GATES_4 (.input1(s_logisimBus67[3:0]),
               .input2(s_logisimBus79[3:0]),
               .result(s_logisimBus57[3:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet34),
               .input2(s_logisimBus4[2]),
               .result(s_logisimBus70[0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet37),
               .input2(s_logisimBus4[2]),
               .result(s_logisimBus70[1]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet63),
               .input2(s_logisimBus4[2]),
               .result(s_logisimBus70[2]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet29),
               .input2(s_logisimBus4[2]),
               .result(s_logisimBus70[3]));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet9),
               .input2(s_logisimNet55),
               .result(s_logisimBus70[4]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet9),
                .input2(s_logisimNet55),
                .result(s_logisimBus70[5]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet54),
                .input2(s_logisimNet10),
                .result(s_logisimNet3));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet0),
                .input2(s_logisimNet43),
                .result(s_logisimNet19));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet61),
                .input2(s_logisimNet47),
                .result(s_logisimNet77));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet47),
                .input2(s_logisimNet18),
                .result(s_logisimNet41));

   Demultiplexer_16   PLEXERS_15 (.demuxIn(s_logisimNet81),
                                  .demuxOut_0(),
                                  .demuxOut_1(s_logisimNet6),
                                  .demuxOut_10(s_logisimNet39),
                                  .demuxOut_11(s_logisimNet27),
                                  .demuxOut_12(s_logisimNet69),
                                  .demuxOut_13(s_logisimNet8),
                                  .demuxOut_14(s_logisimNet25),
                                  .demuxOut_15(s_logisimNet52),
                                  .demuxOut_2(s_logisimNet49),
                                  .demuxOut_3(s_logisimNet44),
                                  .demuxOut_4(s_logisimNet5),
                                  .demuxOut_5(s_logisimNet74),
                                  .demuxOut_6(s_logisimNet40),
                                  .demuxOut_7(s_logisimNet65),
                                  .demuxOut_8(s_logisimNet46),
                                  .demuxOut_9(s_logisimNet11),
                                  .enable(1'b1),
                                  .sel(s_logisimBus26[3:0]));

   Adder #(.extendedBits(7),
           .nrOfBits(6))
      ARITH_16 (.carryIn(s_logisimNet76),
                .carryOut(s_logisimNet31),
                .dataA(s_logisimBus70[5:0]),
                .dataB(s_logisimBus57[5:0]),
                .result(s_logisimBus56[5:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_17 (.clock(s_logisimNet0),
                 .clockEnable(s_logisimNet52),
                 .d(s_logisimBus42[3:0]),
                 .q(s_logisimBus4[3:0]),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_18 (.clock(s_logisimNet16),
                 .d(s_logisimNet20),
                 .preset(1'b0),
                 .q(s_logisimNet12),
                 .qBar(s_logisimNet20),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_19 (.clock(s_logisimNet20),
                 .d(s_logisimNet13),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet13),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_20 (.clock(s_logisimNet13),
                 .d(s_logisimNet22),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet22),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_21 (.clock(s_logisimNet22),
                 .d(s_logisimNet14),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet14),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_22 (.clock(s_logisimNet14),
                 .d(s_logisimNet23),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet23),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_23 (.clock(s_logisimNet23),
                 .d(s_logisimNet10),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet10),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_24 (.clock(s_logisimNet3),
                 .d(s_logisimNet15),
                 .preset(1'b0),
                 .q(s_logisimNet32),
                 .qBar(s_logisimNet15),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_25 (.clock(s_logisimNet15),
                 .d(s_logisimNet21),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet21),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_26 (.clock(s_logisimNet21),
                 .d(s_logisimNet16),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet16),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_27 (.clock(s_logisimNet0),
                 .clockEnable(s_logisimNet77),
                 .d(s_logisimBus42[3:0]),
                 .q(s_logisimBus73[3:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_28 (.clock(s_logisimNet8),
                 .d(s_logisimNet33),
                 .preset(1'b0),
                 .q(s_logisimNet66),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_29 (.clock(s_logisimNet25),
                 .d(s_logisimNet33),
                 .preset(1'b0),
                 .q(s_logisimNet2),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   tone_generator_2   tone_generator_2_2 (.CLK(s_logisimNet0),
                                          .DIN(s_logisimBus1[3:0]),
                                          .FCLK(s_logisimNet3),
                                          .FCLK_16(s_logisimNet12),
                                          .HHSEL(s_logisimNet44),
                                          .HSEL(s_logisimNet49),
                                          .LSEL(s_logisimNet6),
                                          .RST_C(s_logisimNet19),
                                          .SOUT(s_logisimNet78));

   tone_generator_2   tone_generator_2_1 (.CLK(s_logisimNet0),
                                          .DIN(s_logisimBus1[3:0]),
                                          .FCLK(s_logisimNet3),
                                          .FCLK_16(s_logisimNet12),
                                          .HHSEL(s_logisimNet40),
                                          .HSEL(s_logisimNet74),
                                          .LSEL(s_logisimNet5),
                                          .RST_C(s_logisimNet19),
                                          .SOUT(s_logisimNet71));

   triangle_wave_generator   triangle_wave_generator_1 (.CLK(s_logisimNet0),
                                                        .D0(s_logisimNet34),
                                                        .D1(s_logisimNet37),
                                                        .D2(s_logisimNet63),
                                                        .D3(s_logisimNet29),
                                                        .DIN(s_logisimBus1[3:0]),
                                                        .FCLK(s_logisimNet3),
                                                        .FCLK_16(s_logisimNet32),
                                                        .HHSEL(s_logisimNet11),
                                                        .HSEL(s_logisimNet46),
                                                        .LSEL(s_logisimNet65),
                                                        .RST_C(s_logisimNet19));

   tone_generator   tone_generator_1 (.CLK(s_logisimNet0),
                                      .DIN(s_logisimBus1[3:0]),
                                      .DOUT(s_logisimBus67[3:0]),
                                      .FCLK(s_logisimNet3),
                                      .FCLK_16(s_logisimNet32),
                                      .HHSEL(s_logisimNet69),
                                      .HSEL(s_logisimNet27),
                                      .LSEL(s_logisimNet39),
                                      .RST_C(s_logisimNet19));

endmodule

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
   wire [2:0] s_logisimBus1;
   wire [3:0] s_logisimBus20;
   wire [3:0] s_logisimBus24;
   wire [3:0] s_logisimBus26;
   wire [3:0] s_logisimBus44;
   wire [3:0] s_logisimBus52;
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
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet25;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet4;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet43;
   wire       s_logisimNet45;
   wire       s_logisimNet46;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet49;
   wire       s_logisimNet5;
   wire       s_logisimNet50;
   wire       s_logisimNet51;
   wire       s_logisimNet53;
   wire       s_logisimNet54;
   wire       s_logisimNet55;
   wire       s_logisimNet56;
   wire       s_logisimNet57;
   wire       s_logisimNet58;
   wire       s_logisimNet59;
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
   assign s_logisimBus24[0] = s_logisimNet30;
   assign s_logisimBus24[1] = s_logisimNet46;
   assign s_logisimBus24[2] = s_logisimNet13;
   assign s_logisimBus24[3] = s_logisimNet27;
   assign s_logisimBus26[0] = s_logisimNet33;
   assign s_logisimBus26[1] = s_logisimNet33;
   assign s_logisimBus26[2] = s_logisimNet33;
   assign s_logisimBus26[3] = s_logisimNet33;
   assign s_logisimBus44[0] = s_logisimNet30;
   assign s_logisimBus44[1] = s_logisimNet46;
   assign s_logisimBus44[2] = s_logisimNet13;
   assign s_logisimBus44[3] = s_logisimNet27;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet0  = CLK;
   assign s_logisimNet13 = D2;
   assign s_logisimNet14 = A0;
   assign s_logisimNet27 = D3;
   assign s_logisimNet30 = D0;
   assign s_logisimNet35 = RST;
   assign s_logisimNet39 = WR;
   assign s_logisimNet42 = FCLK;
   assign s_logisimNet46 = D1;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign S0 = s_logisimNet29;
   assign S1 = s_logisimNet58;
   assign S2 = s_logisimNet54;
   assign S3 = s_logisimNet49;
   assign S4 = s_logisimNet56;
   assign S5 = s_logisimNet50;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimNet59  =  1'b1;


   // NOT Gate
   assign s_logisimNet45 = ~s_logisimNet14;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(4))
      GATES_1 (.input1(s_logisimBus52[3:0]),
               .input2(s_logisimBus26[3:0]),
               .result(s_logisimBus20[3:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet57),
               .input2(s_logisimBus1[0]),
               .result(s_logisimNet5));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet51),
               .input2(s_logisimBus1[1]),
               .result(s_logisimNet43));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet25),
               .input2(s_logisimBus1[2]),
               .result(s_logisimNet29));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet28),
               .input2(s_logisimBus1[2]),
               .result(s_logisimNet58));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet47),
               .input2(s_logisimBus1[2]),
               .result(s_logisimNet54));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet21),
               .input2(s_logisimBus1[2]),
               .result(s_logisimNet49));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet42),
               .input2(s_logisimNet6),
               .result(s_logisimNet22));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet0),
               .input2(s_logisimNet35),
               .result(s_logisimNet15));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet45),
                .input2(s_logisimNet39),
                .result(s_logisimNet55));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet39),
                .input2(s_logisimNet14),
                .result(s_logisimNet33));

   Demultiplexer_16   PLEXERS_12 (.demuxIn(s_logisimNet59),
                                  .demuxOut_0(),
                                  .demuxOut_1(s_logisimNet3),
                                  .demuxOut_10(),
                                  .demuxOut_11(),
                                  .demuxOut_12(),
                                  .demuxOut_13(),
                                  .demuxOut_14(),
                                  .demuxOut_15(s_logisimNet41),
                                  .demuxOut_2(s_logisimNet40),
                                  .demuxOut_3(s_logisimNet36),
                                  .demuxOut_4(s_logisimNet2),
                                  .demuxOut_5(s_logisimNet53),
                                  .demuxOut_6(s_logisimNet32),
                                  .demuxOut_7(s_logisimNet48),
                                  .demuxOut_8(s_logisimNet37),
                                  .demuxOut_9(s_logisimNet7),
                                  .enable(1'b1),
                                  .sel(s_logisimBus20[3:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(3))
      MEMORY_13 (.clock(s_logisimNet0),
                 .clockEnable(s_logisimNet41),
                 .d(s_logisimBus44[2:0]),
                 .q(s_logisimBus1[2:0]),
                 .reset(s_logisimNet15),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_14 (.clock(s_logisimNet12),
                 .d(s_logisimNet16),
                 .preset(1'b0),
                 .q(s_logisimNet9),
                 .qBar(s_logisimNet16),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_15 (.clock(s_logisimNet16),
                 .d(s_logisimNet10),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet10),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_16 (.clock(s_logisimNet10),
                 .d(s_logisimNet18),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet18),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_17 (.clock(s_logisimNet18),
                 .d(s_logisimNet8),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet8),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_18 (.clock(s_logisimNet8),
                 .d(s_logisimNet19),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet19),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_19 (.clock(s_logisimNet19),
                 .d(s_logisimNet6),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet6),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_20 (.clock(s_logisimNet22),
                 .d(s_logisimNet11),
                 .preset(1'b0),
                 .q(s_logisimNet23),
                 .qBar(s_logisimNet11),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_21 (.clock(s_logisimNet11),
                 .d(s_logisimNet17),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet17),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_22 (.clock(s_logisimNet17),
                 .d(s_logisimNet12),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet12),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_23 (.clock(s_logisimNet0),
                 .clockEnable(s_logisimNet55),
                 .d(s_logisimBus44[3:0]),
                 .q(s_logisimBus52[3:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_24 (.input1(s_logisimNet5),
                .input2(s_logisimNet43),
                .result(s_logisimNet56));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_25 (.input1(s_logisimNet5),
                .input2(s_logisimNet43),
                .result(s_logisimNet50));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   tone_generator_2   tone_generator_2_2 (.CLK(s_logisimNet0),
                                          .DIN(s_logisimBus24[3:0]),
                                          .FCLK(s_logisimNet22),
                                          .FCLK_16(s_logisimNet9),
                                          .HHSEL(s_logisimNet36),
                                          .HSEL(s_logisimNet40),
                                          .LSEL(s_logisimNet3),
                                          .RST_C(s_logisimNet15),
                                          .SOUT(s_logisimNet57));

   tone_generator_2   tone_generator_2_1 (.CLK(s_logisimNet0),
                                          .DIN(s_logisimBus24[3:0]),
                                          .FCLK(s_logisimNet22),
                                          .FCLK_16(s_logisimNet9),
                                          .HHSEL(s_logisimNet32),
                                          .HSEL(s_logisimNet53),
                                          .LSEL(s_logisimNet2),
                                          .RST_C(s_logisimNet15),
                                          .SOUT(s_logisimNet51));

   triangle_wave_generator   triangle_wave_generator_1 (.CLK(s_logisimNet0),
                                                        .D0(s_logisimNet25),
                                                        .D1(s_logisimNet28),
                                                        .D2(s_logisimNet47),
                                                        .D3(s_logisimNet21),
                                                        .DIN(s_logisimBus24[3:0]),
                                                        .FCLK(s_logisimNet22),
                                                        .FCLK_16(s_logisimNet23),
                                                        .HHSEL(s_logisimNet7),
                                                        .HSEL(s_logisimNet37),
                                                        .LSEL(s_logisimNet48),
                                                        .RST_C(s_logisimNet15));

endmodule

/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : triangle_wave_generator                                      **
 **                                                                          **
 *****************************************************************************/

module triangle_wave_generator( CLK,
                                D0,
                                D1,
                                D2,
                                D3,
                                DIN,
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
   output D0;
   output D1;
   output D2;
   output D3;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0] s_logisimBus20;
   wire [2:0] s_logisimBus39;
   wire [3:0] s_logisimBus40;
   wire [3:0] s_logisimBus45;
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
   wire       s_logisimNet2;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet26;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet4;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet43;
   wire       s_logisimNet44;
   wire       s_logisimNet46;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet49;
   wire       s_logisimNet5;
   wire       s_logisimNet50;
   wire       s_logisimNet51;
   wire       s_logisimNet52;
   wire       s_logisimNet53;
   wire       s_logisimNet54;
   wire       s_logisimNet55;
   wire       s_logisimNet56;
   wire       s_logisimNet57;
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
   wire       s_logisimNet67;
   wire       s_logisimNet68;
   wire       s_logisimNet69;
   wire       s_logisimNet7;
   wire       s_logisimNet70;
   wire       s_logisimNet72;
   wire       s_logisimNet73;
   wire       s_logisimNet74;
   wire       s_logisimNet75;
   wire       s_logisimNet76;
   wire       s_logisimNet77;
   wire       s_logisimNet78;
   wire       s_logisimNet79;
   wire       s_logisimNet8;
   wire       s_logisimNet80;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus45[3:0] = DIN;
   assign s_logisimNet14      = CLK;
   assign s_logisimNet22      = LSEL;
   assign s_logisimNet23      = FCLK;
   assign s_logisimNet25      = HSEL;
   assign s_logisimNet31      = HHSEL;
   assign s_logisimNet36      = FCLK_16;
   assign s_logisimNet47      = RST_C;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign D0 = s_logisimNet12;
   assign D1 = s_logisimNet77;
   assign D2 = s_logisimNet70;
   assign D3 = s_logisimNet69;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet68 = ~s_logisimNet23;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet22),
               .input2(s_logisimNet25),
               .result(s_logisimNet78));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet78),
               .input2(s_logisimNet31),
               .result(s_logisimNet79));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet14),
               .input2(s_logisimNet79),
               .result(s_logisimNet15));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet68),
               .input2(s_logisimNet17),
               .result(s_logisimNet54));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet54),
               .input2(s_logisimNet15),
               .result(s_logisimNet80));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet80),
               .input2(s_logisimNet47),
               .result(s_logisimNet21));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet72),
               .input2(s_logisimBus40[3]),
               .result(s_logisimNet65));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet62),
               .input2(s_logisimBus39[0]),
               .result(s_logisimNet6));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet76),
               .input2(s_logisimBus39[1]),
               .result(s_logisimNet66));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet63),
                .input2(s_logisimBus39[2]),
                .result(s_logisimNet42));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet58),
                .input2(s_logisimBus20[0]),
                .result(s_logisimNet32));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet73),
                .input2(s_logisimBus20[1]),
                .result(s_logisimNet67));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet59),
                .input2(s_logisimBus20[2]),
                .result(s_logisimNet56));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet74),
                .input2(s_logisimBus20[3]),
                .result(s_logisimNet34));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_15 (.input1(s_logisimNet60),
                .input2(s_logisimBus40[0]),
                .result(s_logisimNet57));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_16 (.input1(s_logisimNet75),
                .input2(s_logisimBus40[1]),
                .result(s_logisimNet35));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_17 (.input1(s_logisimNet61),
                .input2(s_logisimBus40[2]),
                .result(s_logisimNet5));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet5),
                .input2(s_logisimNet65),
                .result(s_logisimNet13));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_19 (.input1(s_logisimNet6),
                .input2(s_logisimNet66),
                .result(s_logisimNet50));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_20 (.input1(s_logisimNet32),
                .input2(s_logisimNet67),
                .result(s_logisimNet48));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_21 (.input1(s_logisimNet56),
                .input2(s_logisimNet34),
                .result(s_logisimNet64));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_22 (.input1(s_logisimNet57),
                .input2(s_logisimNet35),
                .result(s_logisimNet51));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_23 (.input1(s_logisimNet50),
                .input2(s_logisimNet42),
                .result(s_logisimNet11));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_24 (.input1(s_logisimNet48),
                .input2(s_logisimNet64),
                .result(s_logisimNet9));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_25 (.input1(s_logisimNet51),
                .input2(s_logisimNet13),
                .result(s_logisimNet1));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_26 (.input1(s_logisimNet1),
                .input2(s_logisimNet11),
                .result(s_logisimNet38));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_27 (.input1(s_logisimNet9),
                .input2(s_logisimNet38),
                .result(s_logisimNet17));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_28 (.clock(s_logisimNet29),
                 .d(s_logisimNet7),
                 .preset(1'b0),
                 .q(s_logisimNet72),
                 .qBar(s_logisimNet7),
                 .reset(s_logisimNet21),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_29 (.clock(s_logisimNet7),
                 .d(s_logisimNet26),
                 .preset(1'b0),
                 .q(s_logisimNet62),
                 .qBar(s_logisimNet26),
                 .reset(s_logisimNet21),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_30 (.clock(s_logisimNet26),
                 .d(s_logisimNet8),
                 .preset(1'b0),
                 .q(s_logisimNet76),
                 .qBar(s_logisimNet8),
                 .reset(s_logisimNet21),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_31 (.clock(s_logisimNet8),
                 .d(s_logisimNet53),
                 .preset(1'b0),
                 .q(s_logisimNet63),
                 .qBar(s_logisimNet53),
                 .reset(s_logisimNet21),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_32 (.clock(s_logisimNet36),
                 .d(s_logisimNet24),
                 .preset(1'b0),
                 .q(s_logisimNet58),
                 .qBar(s_logisimNet24),
                 .reset(s_logisimNet21),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_33 (.clock(s_logisimNet24),
                 .d(s_logisimNet2),
                 .preset(1'b0),
                 .q(s_logisimNet73),
                 .qBar(s_logisimNet2),
                 .reset(s_logisimNet21),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_34 (.clock(s_logisimNet2),
                 .d(s_logisimNet27),
                 .preset(1'b0),
                 .q(s_logisimNet59),
                 .qBar(s_logisimNet27),
                 .reset(s_logisimNet21),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_35 (.clock(s_logisimNet27),
                 .d(s_logisimNet3),
                 .preset(1'b0),
                 .q(s_logisimNet74),
                 .qBar(s_logisimNet3),
                 .reset(s_logisimNet21),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_36 (.clock(s_logisimNet3),
                 .d(s_logisimNet28),
                 .preset(1'b0),
                 .q(s_logisimNet60),
                 .qBar(s_logisimNet28),
                 .reset(s_logisimNet21),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_37 (.clock(s_logisimNet28),
                 .d(s_logisimNet4),
                 .preset(1'b0),
                 .q(s_logisimNet75),
                 .qBar(s_logisimNet4),
                 .reset(s_logisimNet21),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_38 (.clock(s_logisimNet4),
                 .d(s_logisimNet29),
                 .preset(1'b0),
                 .q(s_logisimNet61),
                 .qBar(s_logisimNet29),
                 .reset(s_logisimNet21),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_39 (.clock(s_logisimNet17),
                 .d(s_logisimNet52),
                 .preset(1'b0),
                 .q(s_logisimNet12),
                 .qBar(s_logisimNet52),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_40 (.clock(s_logisimNet30),
                 .d(s_logisimNet18),
                 .preset(1'b0),
                 .q(s_logisimNet69),
                 .qBar(s_logisimNet18),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_41 (.clock(s_logisimNet46),
                 .d(s_logisimNet30),
                 .preset(1'b0),
                 .q(s_logisimNet70),
                 .qBar(s_logisimNet30),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_42 (.clock(s_logisimNet52),
                 .d(s_logisimNet46),
                 .preset(1'b0),
                 .q(s_logisimNet77),
                 .qBar(s_logisimNet46),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_43 (.clock(s_logisimNet14),
                 .clockEnable(s_logisimNet22),
                 .d(s_logisimBus45[3:0]),
                 .q(s_logisimBus20[3:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_44 (.clock(s_logisimNet14),
                 .clockEnable(s_logisimNet25),
                 .d(s_logisimBus45[3:0]),
                 .q(s_logisimBus40[3:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(3))
      MEMORY_45 (.clock(s_logisimNet14),
                 .clockEnable(s_logisimNet31),
                 .d(s_logisimBus45[2:0]),
                 .q(s_logisimBus39[2:0]),
                 .reset(1'b0),
                 .tick(1'b1));


endmodule

/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : tone_generator_2                                             **
 **                                                                          **
 *****************************************************************************/

module tone_generator_2( CLK,
                         DIN,
                         FCLK,
                         FCLK_16,
                         HHSEL,
                         HSEL,
                         LSEL,
                         RST_C,
                         SOUT );

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
   output SOUT;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0] s_logisimBus18;
   wire [2:0] s_logisimBus36;
   wire [3:0] s_logisimBus37;
   wire [3:0] s_logisimBus43;
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
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet20;
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
   wire       s_logisimNet67;
   wire       s_logisimNet68;
   wire       s_logisimNet69;
   wire       s_logisimNet7;
   wire       s_logisimNet70;
   wire       s_logisimNet71;
   wire       s_logisimNet72;
   wire       s_logisimNet73;
   wire       s_logisimNet74;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus43[3:0] = DIN;
   assign s_logisimNet13      = CLK;
   assign s_logisimNet20      = LSEL;
   assign s_logisimNet21      = FCLK;
   assign s_logisimNet23      = HSEL;
   assign s_logisimNet28      = HHSEL;
   assign s_logisimNet33      = FCLK_16;
   assign s_logisimNet44      = RST_C;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign SOUT = s_logisimNet41;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet65 = ~s_logisimNet21;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet20),
               .input2(s_logisimNet23),
               .result(s_logisimNet72));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet72),
               .input2(s_logisimNet28),
               .result(s_logisimNet73));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet13),
               .input2(s_logisimNet73),
               .result(s_logisimNet14));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet65),
               .input2(s_logisimNet16),
               .result(s_logisimNet51));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet51),
               .input2(s_logisimNet14),
               .result(s_logisimNet74));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet74),
               .input2(s_logisimNet44),
               .result(s_logisimNet19));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet67),
               .input2(s_logisimBus37[3]),
               .result(s_logisimNet62));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet59),
               .input2(s_logisimBus36[0]),
               .result(s_logisimNet6));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet71),
               .input2(s_logisimBus36[1]),
               .result(s_logisimNet63));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet60),
                .input2(s_logisimBus36[2]),
                .result(s_logisimNet39));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet55),
                .input2(s_logisimBus18[0]),
                .result(s_logisimNet29));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet68),
                .input2(s_logisimBus18[1]),
                .result(s_logisimNet64));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet56),
                .input2(s_logisimBus18[2]),
                .result(s_logisimNet53));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet69),
                .input2(s_logisimBus18[3]),
                .result(s_logisimNet31));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_15 (.input1(s_logisimNet57),
                .input2(s_logisimBus37[0]),
                .result(s_logisimNet54));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_16 (.input1(s_logisimNet70),
                .input2(s_logisimBus37[1]),
                .result(s_logisimNet32));

   XNOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_17 (.input1(s_logisimNet58),
                .input2(s_logisimBus37[2]),
                .result(s_logisimNet5));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet5),
                .input2(s_logisimNet62),
                .result(s_logisimNet12));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_19 (.input1(s_logisimNet6),
                .input2(s_logisimNet63),
                .result(s_logisimNet47));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_20 (.input1(s_logisimNet29),
                .input2(s_logisimNet64),
                .result(s_logisimNet45));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_21 (.input1(s_logisimNet53),
                .input2(s_logisimNet31),
                .result(s_logisimNet61));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_22 (.input1(s_logisimNet54),
                .input2(s_logisimNet32),
                .result(s_logisimNet48));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_23 (.input1(s_logisimNet47),
                .input2(s_logisimNet39),
                .result(s_logisimNet11));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_24 (.input1(s_logisimNet45),
                .input2(s_logisimNet61),
                .result(s_logisimNet9));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_25 (.input1(s_logisimNet48),
                .input2(s_logisimNet12),
                .result(s_logisimNet1));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_26 (.input1(s_logisimNet1),
                .input2(s_logisimNet11),
                .result(s_logisimNet35));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_27 (.input1(s_logisimNet9),
                .input2(s_logisimNet35),
                .result(s_logisimNet16));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_28 (.clock(s_logisimNet27),
                 .d(s_logisimNet7),
                 .preset(1'b0),
                 .q(s_logisimNet67),
                 .qBar(s_logisimNet7),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_29 (.clock(s_logisimNet7),
                 .d(s_logisimNet24),
                 .preset(1'b0),
                 .q(s_logisimNet59),
                 .qBar(s_logisimNet24),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_30 (.clock(s_logisimNet24),
                 .d(s_logisimNet8),
                 .preset(1'b0),
                 .q(s_logisimNet71),
                 .qBar(s_logisimNet8),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_31 (.clock(s_logisimNet8),
                 .d(s_logisimNet50),
                 .preset(1'b0),
                 .q(s_logisimNet60),
                 .qBar(s_logisimNet50),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_32 (.clock(s_logisimNet33),
                 .d(s_logisimNet22),
                 .preset(1'b0),
                 .q(s_logisimNet55),
                 .qBar(s_logisimNet22),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_33 (.clock(s_logisimNet22),
                 .d(s_logisimNet2),
                 .preset(1'b0),
                 .q(s_logisimNet68),
                 .qBar(s_logisimNet2),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_34 (.clock(s_logisimNet2),
                 .d(s_logisimNet25),
                 .preset(1'b0),
                 .q(s_logisimNet56),
                 .qBar(s_logisimNet25),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_35 (.clock(s_logisimNet25),
                 .d(s_logisimNet3),
                 .preset(1'b0),
                 .q(s_logisimNet69),
                 .qBar(s_logisimNet3),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_36 (.clock(s_logisimNet3),
                 .d(s_logisimNet26),
                 .preset(1'b0),
                 .q(s_logisimNet57),
                 .qBar(s_logisimNet26),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_37 (.clock(s_logisimNet26),
                 .d(s_logisimNet4),
                 .preset(1'b0),
                 .q(s_logisimNet70),
                 .qBar(s_logisimNet4),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_38 (.clock(s_logisimNet4),
                 .d(s_logisimNet27),
                 .preset(1'b0),
                 .q(s_logisimNet58),
                 .qBar(s_logisimNet27),
                 .reset(s_logisimNet19),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_39 (.clock(s_logisimNet16),
                 .d(s_logisimNet49),
                 .preset(1'b0),
                 .q(s_logisimNet41),
                 .qBar(s_logisimNet49),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_40 (.clock(s_logisimNet13),
                 .clockEnable(s_logisimNet20),
                 .d(s_logisimBus43[3:0]),
                 .q(s_logisimBus18[3:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_41 (.clock(s_logisimNet13),
                 .clockEnable(s_logisimNet23),
                 .d(s_logisimBus43[3:0]),
                 .q(s_logisimBus37[3:0]),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(3))
      MEMORY_42 (.clock(s_logisimNet13),
                 .clockEnable(s_logisimNet28),
                 .d(s_logisimBus43[2:0]),
                 .q(s_logisimBus36[2:0]),
                 .reset(1'b0),
                 .tick(1'b1));


endmodule

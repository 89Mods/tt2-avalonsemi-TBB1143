set ::env(DESIGN_NAME) tholin_avalonsemi_tbb1143
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/toplevel/logisimTopLevelShell.v \
    $::env(DESIGN_DIR)/circuit/main.v \
    $::env(DESIGN_DIR)/circuit/tone_generator_2.v \
    $::env(DESIGN_DIR)/circuit/triangle_wave_generator.v \
    $::env(DESIGN_DIR)/gates/AND_GATE.v \
    $::env(DESIGN_DIR)/gates/AND_GATE_BUS.v \
    $::env(DESIGN_DIR)/gates/OR_GATE.v \
    $::env(DESIGN_DIR)/gates/XNOR_GATE_ONEHOT.v \
    $::env(DESIGN_DIR)/gates/XOR_GATE_ONEHOT.v \
    $::env(DESIGN_DIR)/memory/D_FLIPFLOP.v \
    $::env(DESIGN_DIR)/memory/REGISTER_FLIP_FLOP.v \
    $::env(DESIGN_DIR)/plexers/Demultiplexer_16.v \
    $::env(DESIGN_DIR)/arith/Adder.v"

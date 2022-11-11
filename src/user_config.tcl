set ::env(DESIGN_NAME) tholin_avalonsemi_tbb1143
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/toplevel/logisimTopLevelShell.v \
    $::env(DESIGN_DIR)/circuit/*.v \
    $::env(DESIGN_DIR)/gates/*.v \
    $::env(DESIGN_DIR)/memory/*.v \
    $::env(DESIGN_DIR)/plexers/*.v"

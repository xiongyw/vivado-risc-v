set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]    ;# CCLK (config clk) in MHz
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
#set_property BITSTREAM.CONFIG.UNUSEDPIN pulldown [current_design]
#set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
#set_property CONFIG_MODE SPIx4 [current_design]

# 100Mhz system clk
set_property -dict {LOC AY23 IOSTANDARD DIFF_SSTL12} [get_ports clk_user_clk_p]
set_property -dict {LOC BA23 IOSTANDARD DIFF_SSTL12} [get_ports clk_user_clk_n]

# Reset button, active low: ModPrsL of down qsfp28
set_property -dict {LOC BB11 IOSTANDARD LVCMOS12} [get_ports resetn]
set_false_path -from [get_ports {resetn}]
set_input_delay 0 [get_ports {resetn}]

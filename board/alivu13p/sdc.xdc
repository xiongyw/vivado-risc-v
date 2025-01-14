# - 1-bit SDIO; 
# - sdio_cd ties to 1; 
# - sdio_wp ties to 0
# - pin assignment: use qsfp28_dn control signals
set_property -dict { PACKAGE_PIN BB10  IOSTANDARD LVCMOS12 IOB TRUE } [get_ports { sdio_clk }];
set_property -dict { PACKAGE_PIN BF12  IOSTANDARD LVCMOS12 IOB TRUE } [get_ports { sdio_cmd }];
set_property -dict { PACKAGE_PIN BD9   IOSTANDARD LVCMOS12 IOB TRUE } [get_ports { sdio_dat[0] }];
#set_property -dict { PACKAGE_PIN AA23  IOSTANDARD LVCMOS25 IOB TRUE } [get_ports { sdio_dat[1] }];
#set_property -dict { PACKAGE_PIN AA22  IOSTANDARD LVCMOS25 IOB TRUE } [get_ports { sdio_dat[2] }];
#set_property -dict { PACKAGE_PIN AC21  IOSTANDARD LVCMOS25 IOB TRUE } [get_ports { sdio_dat[3] }];
#set_property -dict { PACKAGE_PIN AA21  IOSTANDARD LVCMOS25 } [get_ports { sdio_cd }];
#set_property -dict { PACKAGE_PIN Y21   IOSTANDARD LVCMOS25 } [get_ports { sdio_wp }];

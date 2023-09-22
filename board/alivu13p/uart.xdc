# UART: TX/RX is LPMode/IntL of down qsfp28 port
set_property -dict {PACKAGE_PIN BB7 IOSTANDARD LVCMOS12} [get_ports usb_uart_txd]
set_property -dict {PACKAGE_PIN BC11 IOSTANDARD LVCMOS12} [get_ports usb_uart_rxd]

#set_property PACKAGE_PIN    BD21 [get_ports {qsfp_led_y[0]}]
#set_property PACKAGE_PIN    BE21 [get_ports {qsfp_led_y[1]}]
#set_property PACKAGE_PIN    BE22 [get_ports {qsfp_led_g[0]}]
#set_property PACKAGE_PIN    BF22 [get_ports {qsfp_led_g[1]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {qsfp_led_y[0]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {qsfp_led_y[1]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {qsfp_led_g[0]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {qsfp_led_g[1]}]

 
# 离PCIE金手指较远的up通道选择 233 即可, 对应位置 X1Y52~Y55
# 离PCIE金手指较近的dn通道选择 229 即可, 对应位置 X1Y36~Y39
#
# 参考ug575 P345 :  BANK 233  主要分布在(A/C/D/E)(1~11)
set_property PACKAGE_PIN E9  [get_ports {qsfp0_tx1_p}] ; # 若使用8线MPO，对应 8 号线  tx_0 ; up_qsfp0_tx_p
set_property PACKAGE_PIN E8  [get_ports {qsfp0_tx1_n}] ; # 若使用8线MPO，对应 8 号线  tx_0 ; up_qsfp0_tx_n
#set_property PACKAGE_PIN D7  [get_ports {c2c_master_tx_txp[1]}] ; # 若使用8线MPO，对应 7 号线  tx_1 ; up_qsfp1_tx_p
#set_property PACKAGE_PIN D6  [get_ports {c2c_master_tx_txn[1]}] ; # 若使用8线MPO，对应 7 号线  tx_1 ; up_qsfp1_tx_n
#set_property PACKAGE_PIN C9  [get_ports {c2c_slave_tx_txp[0]}]  ; # 若使用8线MPO，对应 6 号线  tx_2 ; up_qsfp2_tx_p
#set_property PACKAGE_PIN C8  [get_ports {c2c_slave_tx_txn[0]}]  ; # 若使用8线MPO，对应 6 号线  tx_2 ; up_qsfp2_tx_n
#set_property PACKAGE_PIN A9  [get_ports {c2c_slave_tx_txp[1]}]  ; # 若使用8线MPO，对应 5 号线  tx_3 ; up_qsfp3_tx_p
#set_property PACKAGE_PIN A8  [get_ports {c2c_slave_tx_txn[1]}]  ; # 若使用8线MPO，对应 5 号线  tx_3 ; up_qsfp3_tx_n
set_property PACKAGE_PIN E4  [get_ports {qsfp0_rx1_p}] ; # 若使用8线MPO，对应 1 号线  rx_0 ; up_qsfp0_rx_p
set_property PACKAGE_PIN E3  [get_ports {qsfp0_rx1_n}] ; # 若使用8线MPO，对应 1 号线  rx_0 ; up_qsfp0_rx_n
#set_property PACKAGE_PIN D2  [get_ports {c2c_master_rx_rxp[1]}] ; # 若使用8线MPO，对应 2 号线  rx_1 ; up_qsfp1_rx_p
#set_property PACKAGE_PIN D1  [get_ports {c2c_master_rx_rxn[1]}] ; # 若使用8线MPO，对应 2 号线  rx_1 ; up_qsfp1_rx_n
#set_property PACKAGE_PIN C4  [get_ports {c2c_slave_rx_rxp[0]}]  ; # 若使用8线MPO，对应 3 号线  rx_2 ; up_qsfp2_rx_p
#set_property PACKAGE_PIN C3  [get_ports {c2c_slave_rx_rxn[0]}]  ; # 若使用8线MPO，对应 3 号线  rx_2 ; up_qsfp2_rx_n
#set_property PACKAGE_PIN A5  [get_ports {c2c_slave_rx_rxp[1]}]  ; # 若使用8线MPO，对应 4 号线  rx_3 ; up_qsfp3_rx_p
#set_property PACKAGE_PIN A4  [get_ports {c2c_slave_rx_rxn[1]}]  ; # 若使用8线MPO，对应 4 号线  rx_3 ; up_qsfp3_rx_n
set_property PACKAGE_PIN    D11     [get_ports qsfp0_mgt_refclk_1_p]
set_property PACKAGE_PIN    D10     [get_ports qsfp0_mgt_refclk_1_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports qsfp0_mgt_refclk_1_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports qsfp0_mgt_refclk_1_n]
#set_property PACKAGE_PIN BC12       [get_ports {up_qsfp_i2c_sda}]
#set_property PACKAGE_PIN BD8        [get_ports {up_qsfp_i2c_scl}]
set_property PACKAGE_PIN BA7        [get_ports {up_qsfp_resetl}]  ; #output ,信号拉低会启动完 整模块复位，默认内 部将其上拉至 VCC
set_property PACKAGE_PIN BC7        [get_ports {qsfp0_modprsl}] ; #input  ,检测模块是否存在
set_property PACKAGE_PIN BC8        [get_ports {qsfp0_intl}]    ; #input  ,故障输出指示
set_property PACKAGE_PIN BB9        [get_ports {qsfp0_lpmode}]  ; #output ,低功耗模式，内部默 认上拉至 VCC
set_property IOSTANDARD LVCMOS12    [get_ports {qsfp0_i2c_sda}]
set_property IOSTANDARD LVCMOS12    [get_ports {qsfp0_i2c_scl}]
set_property IOSTANDARD LVCMOS12    [get_ports {qsfp0_resetl}]  ; #output ,信号拉低会启动完 整模块复位，默认内 部将其上拉至 VCC
set_property IOSTANDARD LVCMOS12    [get_ports {qsfp0_modprsl}] ; #input  ,检测模块是否存在
set_property IOSTANDARD LVCMOS12    [get_ports {qsfp0_intl}]    ; #input  ,故障输出指示
set_property IOSTANDARD LVCMOS12    [get_ports {qsfp0__lpmode}]  ; #output ,低功耗模式，内部默 认上拉至 VCC
#set_property PULLUP true            [get_ports {up_qsfp_resetl}]
#set_property PULLUP true            [get_ports {up_qsfp_lpmode}]

#############################################################################################
# FIXME: qsfp0_refclk_reset, qsfp0_fs[1:0], qsfp0_modsell (tied 1)

#set_property -dict {LOC K11 } [get_ports qsfp0_mgt_refclk_1_p] ;# MGTREFCLK1P_231 from U9.18
#set_property -dict {LOC K10 } [get_ports qsfp0_mgt_refclk_1_n] ;# MGTREFCLK1N_231 from U9.17
#set_property -dict {LOC BE16 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports qsfp0_modsell]
#set_property -dict {LOC BE17 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports qsfp0_resetl]
#set_property -dict {LOC BE20 IOSTANDARD LVCMOS12 PULLUP true} [get_ports qsfp0_modprsl]
#set_property -dict {LOC BE21 IOSTANDARD LVCMOS12 PULLUP true} [get_ports qsfp0_intl]
#set_property -dict {LOC BD18 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports qsfp0_lpmode]
#set_property -dict {LOC AT22 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports qsfp0_refclk_reset]
#set_property -dict {LOC AT20 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {qsfp0_fs[0]}]
#set_property -dict {LOC AU22 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {qsfp0_fs[1]}]
 
 
## 参考ug575 P345 :  BANK 229  主要分布在(V/W/Y/AA)(1~11)
#set_property PACKAGE_PIN AA9 [get_ports {dn_qsfp0_tx_p}] ; # 若使用8线MPO，对应 8 号线  tx_0
#set_property PACKAGE_PIN AA8 [get_ports {dn_qsfp0_tx_n}] ; # 若使用8线MPO，对应 8 号线  tx_0
#set_property PACKAGE_PIN Y7  [get_ports {dn_qsfp1_tx_p}] ; # 若使用8线MPO，对应 7 号线  tx_1
#set_property PACKAGE_PIN Y6  [get_ports {dn_qsfp1_tx_n}] ; # 若使用8线MPO，对应 7 号线  tx_1
#set_property PACKAGE_PIN W9  [get_ports {dn_qsfp2_tx_p}] ; # 若使用8线MPO，对应 6 号线  tx_2
#set_property PACKAGE_PIN W8  [get_ports {dn_qsfp2_tx_n}] ; # 若使用8线MPO，对应 6 号线  tx_2
#set_property PACKAGE_PIN V7  [get_ports {dn_qsfp3_tx_p}] ; # 若使用8线MPO，对应 5 号线  tx_3
#set_property PACKAGE_PIN V6  [get_ports {dn_qsfp3_tx_n}] ; # 若使用8线MPO，对应 5 号线  tx_3
#set_property PACKAGE_PIN AA4 [get_ports {dn_qsfp0_rx_p}] ; # 若使用8线MPO，对应 1 号线  rx_0
#set_property PACKAGE_PIN AA3 [get_ports {dn_qsfp0_rx_n}] ; # 若使用8线MPO，对应 1 号线  rx_0
#set_property PACKAGE_PIN Y2  [get_ports {dn_qsfp1_rx_p}] ; # 若使用8线MPO，对应 2 号线  rx_1
#set_property PACKAGE_PIN Y1  [get_ports {dn_qsfp1_rx_n}] ; # 若使用8线MPO，对应 2 号线  rx_1
#set_property PACKAGE_PIN W4  [get_ports {dn_qsfp2_rx_p}] ; # 若使用8线MPO，对应 3 号线  rx_2
#set_property PACKAGE_PIN W3  [get_ports {dn_qsfp2_rx_n}] ; # 若使用8线MPO，对应 3 号线  rx_2
#set_property PACKAGE_PIN V2  [get_ports {dn_qsfp3_rx_p}] ; # 若使用8线MPO，对应 4 号线  rx_3
#set_property PACKAGE_PIN V1  [get_ports {dn_qsfp3_rx_n}] ; # 若使用8线MPO，对应 4 号线  rx_3
#set_property PACKAGE_PIN    Y11     [get_ports dn_qsfp161_clk_p]
#set_property PACKAGE_PIN    Y10     [get_ports dn_qsfp161_clk_n]
#set_property IOSTANDARD DIFF_SSTL12 [get_ports dn_qsfp161_clk_p]
#set_property IOSTANDARD DIFF_SSTL12 [get_ports dn_qsfp161_clk_n]
#set_property PACKAGE_PIN BD9        [get_ports {dn_qsfp_i2c_sda}]
#set_property PACKAGE_PIN BF12       [get_ports {dn_qsfp_i2c_scl}]
#set_property PACKAGE_PIN BB10       [get_ports {dn_qsfp_resetl}]  ; #output ,信号拉低会启动完 整模块复位，默认内 部将其上拉至 VCC
#set_property PACKAGE_PIN BB11       [get_ports {dn_qsfp_modprsl}] ; #input  ,检测模块是否存在
#set_property PACKAGE_PIN BC11       [get_ports {dn_qsfp_intl}]    ; #input  ,故障输出指示
#set_property PACKAGE_PIN BB7        [get_ports {dn_qsfp_lpmode}]  ; #output ,低功耗模式，内部默 认上拉至 VCC
#set_property IOSTANDARD LVCMOS12    [get_ports {dn_qsfp_i2c_sda}]
#set_property IOSTANDARD LVCMOS12    [get_ports {dn_qsfp_i2c_scl}]
#set_property IOSTANDARD LVCMOS12    [get_ports {dn_qsfp_resetl}]  ; #output ,信号拉低会启动完 整模块复位，默认内 部将其上拉至 VCC
#set_property IOSTANDARD LVCMOS12    [get_ports {dn_qsfp_modprsl}] ; #input  ,检测模块是否存在
#set_property IOSTANDARD LVCMOS12    [get_ports {dn_qsfp_intl}]    ; #input  ,故障输出指示
#set_property IOSTANDARD LVCMOS12    [get_ports {dn_qsfp_lpmode}]  ; #output ,低功耗模式，内部默 认上拉至 VCC
##set_property PULLUP true            [get_ports {dn_qsfp_resetl}]
##set_property PULLUP true            [get_ports {dn_qsfp_lpmode}]








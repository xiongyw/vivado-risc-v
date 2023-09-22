# About the board

The alivu13p card contains two QSFP28 slots (let's call them "upper" and "down" slot respectively).
We use the 6 control signals from the "down" slot for the following 3 peripherals:

- uart:
    - input (rx):  IntL (BC11)
    - output (tx): LPMode (BB7)

- sdcard (1-bit mode):
    - output (clk): ResetL (BB10)
    - inout:
        - cmd:   SCL (BF12)
        - data0: SDA (BD9)

- button:
    - input (active low): ModPrsL (BB11)

Note that all 6 control signals on the QSFP interface are already level-shifted to 3v3.

# CPU `CONFIG`

For RocketChip CPU to access 4 DDR banks, use `CONFIG=rocket64b4m4`, as discussed [here](https://github.com/eugene-tarassov/vivado-risc-v/discussions/188).

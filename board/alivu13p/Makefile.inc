BOARD_PART  ?= NONE
XILINX_PART ?= xcvu13p-fhgb2104-2L-e
CFG_DEVICE  ?= SPIx4 -size 512
CFG_PART    ?= mt25qu02g-spi-x1_x2_x4
CFG_BOOT    ?= -loaddata {up 0x07000000 workspace/boot.elf}
MEMORY_SIZE ?= 0x400000000
#ROOTFS      ?= NFS

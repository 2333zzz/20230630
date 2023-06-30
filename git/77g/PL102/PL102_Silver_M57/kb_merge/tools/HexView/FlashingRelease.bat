
powerpc-eabivle-objcopy -O srec ARF101_B1_Product.elf  "ARF101_B1_Product.srec"

start ../tools/HexView/hexview.exe  /s /mt:../Debug/*.srec+../Bootloader/*.srec /xs -o application_with_boot.srec
start ../tools/HexView/hexview.exe  /s ../Debug/ARF101_B1_Product.srec /cr:0x00000000-0x00ffffff /fp:ff /fr:0x01000000-0x0117fffd /xs -o application_without_boot.srec
start ../tools/HexView/hexview.exe  /s ../Debug/ARF101_B1_Product.srec /cr:0x00000000-0x00ffffff /fp:ff /fr:0x01000000-0x0117fffb /cs0:@0x0117fffc;0x01000000-0x0100ffff,/cs0:@0x0117fffe;0x01000000-0x0117fffd  /xs -o application_without_boot_jmc.srec


powerpc-eabivle-objcopy -O srec ARC102_B2_Product.elf  "ARC102_B2_Product.srec"

cd ../tools/HexView

hexview.exe  /s ../../kb/FlashParameter_Z4_0.srec /cr:0x00FA0000-0x00FBFFFF  /xs -o ../../kb_cut/1.srec

hexview.exe  /s ../../kb_cut/1.srec /cr:0x1000000-0x0117ffff  /xs -o ../../kb_cut/kb.srec
hexview.exe  /s /mt:../../kb_cut/kb.srec+../../PL_Software/*.srec /xs -o ../../withboot_kb/application_withboot_kb.srec
cd ../Other
rename.exe


connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183795593A" && level==0} -index 0
fpga -file C:/Users/sarcasmisthere/Desktop/uec2project/repo/PROJEKT1.0/bomberman_uec2/MicroblazeProject/MicroblazeProject.vitis/Bomberman/_ide/bitstream/download.bit
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/sarcasmisthere/Desktop/uec2project/repo/PROJEKT1.0/bomberman_uec2/MicroblazeProject/MicroblazeProject.vitis/Bomberman/Debug/Bomberman.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con

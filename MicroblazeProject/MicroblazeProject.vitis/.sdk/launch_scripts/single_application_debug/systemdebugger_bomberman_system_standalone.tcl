connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183795574A" && level==0} -index 0
fpga -file D:/bomberman_uec2/MicroblazeProject/MicroblazeProject.vitis/Bomberman/_ide/bitstream/download.bit
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow D:/bomberman_uec2/MicroblazeProject/MicroblazeProject.vitis/Bomberman/Debug/Bomberman.elf
bpadd -addr &main

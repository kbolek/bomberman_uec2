################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/clock.c \
../src/main.c \
../src/map.c 

OBJS += \
./src/clock.o \
./src/main.o \
./src/map.o 

C_DEPS += \
./src/clock.d \
./src/main.d \
./src/map.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -IC:/Users/sarcasmisthere/Desktop/uec2project/repo/PROJEKT1.0/bomberman_uec2/MicroblazeProject/MicroblazeProject.vitis/QUARTZ/export/QUARTZ/sw/QUARTZ/standalone_domain/bspinclude/include -mno-xl-reorder -mlittle-endian -mno-xl-soft-div -mcpu=v11.0 -mno-xl-soft-mul -mhard-float -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



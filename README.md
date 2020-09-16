![BombermanQuartzEditionLogo](/images/logo.png)


## Introduction

This project is realized as part of UEC2 course by Dominik Chat and Krzysztof Bolek. This is a modification of oldschool game named ,,Bomberman" based on Basys3 FPGA Board and MicroBlaze processor design using the Vivado (**2019.2 version**). In this project it is used Vivado IP integrator to build a processor design, and then debug the design with the **Vitis** - 
unified software platform and the Vivado Integrated Logic Analyzer.

 What is the MicroBlaze Processor?
>MicroBlaze is Xilinx’s soft processor core optimized for embedded
applications on Xilinx devices. The MicroBlaze processor is easy to
use and delivers the flexibility to select the combination of
peripherals, memory, and interfaces as needed.

## How to run the game?

First of all - it is required a Vivado software (2019.2 or later) and the Vitis software platform.
The procedure is highly simple - all you have to do is:
1. Select Tools -> Launch Vitis. 
** Make sure that in the Eclipse Launcher (which should open after Launch Vitis) Workspace is set up appriopriate -> bomberman_uec2\MicroblazeProject\MicroblazeProject.vitis. If the path is OK click Launch.

2. Select Xilinx -> Program FPGA.
![ProgramInstruction](/images/program.png)

And then click Program. 

**In this project We created own pads which are essential to whole game. 

## Pads





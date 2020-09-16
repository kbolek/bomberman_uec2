![BombermanQuartzEditionLogo](/images/logo.png)


## Introduction

This project is realized as part of UEC2 course by Dominik Chat and Krzysztof Bolek. This is a modification of old school game named ,, Bomberman" based on Basys3 FPGA Board and MicroBlaze processor design using the Vivado (**2019.2 version**). In this project, it is used Vivado IP integrator to build a processor design, and then debug the design with the **Vitis** - 
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
** Make sure that in the Eclipse Launcher (which should open after Launch Vitis) Workspace is set up appropriate -> bomberman_uec2\MicroblazeProject\MicroblazeProject.vitis. If the path is OK click Launch.

<details>
<summary>2. Select Xilinx -> Program FPGA.</summary>
<img src="/images/program.png"/>
</details>

And then click Program. 

**In this project We created own pads which are essential to the whole game.** 

## Pads

<details>
<summary> We designed pads using the EasyEDA platform. </summary>
<img src="/images/pad_sheet.PNG"/>
</details>

<details>
<summary> And the PCB: </summary>
<img src="/images/pad_pcb.PNG"/>
</details>


**To prevent high voltages from affecting the Basys3 board  We designed the optoisolator adapter.**

> An optoisolator (also called an optocoupler, photocoupler, or optical isolator) is an electronic component that transfers electrical signals between two isolated circuits by using light. Opto-isolators prevent high voltages from affecting the system receiving the signal.[2] Commercially available optoisolators withstand input-to-output voltages up to 10 kV and voltage transients with speeds up to 25 kV/μs. (https://en.wikipedia.org/wiki/Opto-isolator)

<details>
<summary> Opto-isolator sound adapter</summary>
<img src="/images/pads_sound.PNG"/>
<img src="/images/pads_sound_pcb.PNG"/>
 </details>
What is more for future development of the project We designed the circuit which containts the H1 Speaker which can be used to give the sound during the play. 

## The game
<details>
<summary>Click to show how to the game looks like</summary>
<img src="/images/game.PNG"/>
 </details>
 
 First of all the game goal is to blow up the other player by put the bomb near to him. In this case players need to blow up first the ,,Fire Walls":
 <img src="/images/textures/wall.png"/>. Under this fire walls players can find the bonuses:
 
1. <img src="/images/amplifier.PNG"/> Amplifier, which boost our bomb firepower.
2.<img src="/images/transistor.PNG"/> Transistor, which allows  to transfer the bomb (bomb blow up after 3 seconds). 
3. <img src="/images/textures/bomb.PNG"/> Bomb, which give possibility to set up more bombs at the same time. 

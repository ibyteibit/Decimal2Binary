# Decimal2Binary - *Logic Design Class Final Project*
![Image of the Decimal2Binary game running on FPGA](https://github.com/ibyteibit/Decimal2Binary/blob/main/pics/LabeledFPGA.png)

## Description
- A Verilog & FPGA game challenging players to convert decimal numbers (base 10) to binary (base 2) in a limited time
- Players use 10 switches on the FPGA to enter the 2’s-Complement binary number
- Each level, numbers get larger and negatives appear
- 16 LEDs provide a visual countdown timer
## Tools
- Vivado IDE
## Methodology
- Designed a hardware-based Random Number Generator using a rapidly-incremented counter reg and modulo to select values for each level (below)
- Incorporated a clock divider for the timer and debouncers for the two buttons
- Collaborated closely with my teammate to efficiently integrate my game logic with his 7-seg display code
- Developed testbench files to simulate individual modules without synthesizing the design, see [sim](https://github.com/ibyteibit/Decimal2Binary/tree/main/sim)

![Image of Verilog level logic](https://github.com/ibyteibit/Decimal2Binary/blob/main/pics/Verilog.png)

### 1. General Purpose Registers
--------------------------------------
•	AX → accumulator (often used for arithmetic, input/output)

•	BX → base register

•	CX → counter register (loops)

•	DX → data register (I/O operations)


### 2. Segment Registers
----------------------------------------
•	DS → Data segment

•	CS → Code segment

•	SS → Stack segment

•	ES → Extra segment


### 3. Register halves (high / low parts)
   --------------------------------------

•	AH / AL → upper and lower 8 bits of AX

•	BH / BL

•	CH / CL

•	DH / DL

This matters because DOS interrupts often use AH for function number and DL for character output.



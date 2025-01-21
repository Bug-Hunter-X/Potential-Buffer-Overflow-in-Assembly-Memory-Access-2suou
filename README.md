# Potential Buffer Overflow in Assembly Memory Access

This repository demonstrates a potential buffer overflow vulnerability in a simple assembly code snippet. The vulnerability stems from an unchecked multiplication operation within a memory address calculation, potentially leading to an out-of-bounds memory access.

## Vulnerability Details

The `bug.asm` file contains the vulnerable code, which uses the `mov` instruction to access memory using an address calculated as `[ebx + ecx*4 + 0x10]`. If the value in `ecx` is sufficiently large, the result of the multiplication could overflow the register's capacity, resulting in an incorrect address and potential memory corruption or a crash. 

## Solution

The `bugSolution.asm` file shows a possible mitigation strategy that involves adding a check to ensure that the calculated address does not exceed a safe limit.  This limit should be defined based on the size of the allocated memory buffer.

## How to Use

1. Clone the repository.
2. Assemble the code using an appropriate assembler (e.g., NASM, MASM).  
3. Run the assembled code in a debugger to observe the potential behavior.
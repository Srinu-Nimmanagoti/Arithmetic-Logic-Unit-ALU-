# 🗒️ Arithmetic-Logic-Unit-(ALU)-Verilog | Vivado
This Verilog implementation presents a basic 8-bit Arithmetic Logic Unit (ALU) supporting five core operations: addition (ADD), subtraction (SUB), bitwise AND, OR, and NOT. The design takes two 8-bit inputs (a and b) and a 3-bit operation code (op) to select the desired operation, producing an 8-bit result and a zero_flag that indicates when the output equals zero. The testbench verifies all operations with clear decimal and binary test cases, demonstrating correct functionality for arithmetic calculations (10+20=30) and logical operations (10101010 AND 11001100=10001000), including zero detection (100-100 sets zero_flag). 
# Components
## Inputs:
* a (8-bit) – First operand for arithmetic/logical operations.
* b (8-bit) – Second operand (except for NOT, which uses only a).
* op (3-bit) – Operation selector (determines which operation to perform).
# Outputs:
result (8-bit) – Output of the selected operation.
zero_flag (1-bit) – Becomes 1 if result == 0, else 0.
# Operation Table
![Image](https://github.com/user-attachments/assets/ef66062b-d29f-444d-a037-61bdfc8e6a06)


# 🗒️ Arithmetic-Logic-Unit-(ALU)-Verilog | Vivado
This Verilog implementation presents a basic 8-bit Arithmetic Logic Unit (ALU) supporting five core operations: addition (ADD), subtraction (SUB), bitwise AND, OR, and NOT. The design takes two 8-bit inputs (a and b) and a 3-bit operation code (op) to select the desired operation, producing an 8-bit result and a zero_flag that indicates when the output equals zero. The testbench verifies all operations with clear decimal and binary test cases, demonstrating correct functionality for arithmetic calculations (10+20=30) and logical operations (10101010 AND 11001100=10001000), including zero detection (100-100 sets zero_flag). 
# Repository Structure
** fir_filter_project/
** ├── fir_filter.v          # FIR filter module
** ├── tb_fir_filter.v       # Testbench
** └── README.md             # Project description


# Components
## Inputs:
* a (8-bit) – First operand for arithmetic/logical operations.
** b (8-bit) – Second operand (except for NOT, which uses only a).
* op (3-bit) – Operation selector (determines which operation to perform).
## Output:
* result (8-bit) – Output of the selected operation.
* zero_flag (1-bit) – Becomes 1 if result == 0, else 0.
# Operation Table

### Sample Output Timing:

| Time (ns) | x_in | y_out |
|-----------|------|--------|
| 10        | 1    | 1      |
| 20        | 2    | 4      |
| 30        | 3    | 8      |
| 40        | 4    | 12     |
| 50        | 5    | 16     |
| 60        | 0    | 14     |
| 70        | 0    | 5      |
| 80        | 0    | 0      |

## 🧪 How to Simulate

You can simulate this project using any Verilog simulator (e.g., **ModelSim**, **Vivado**, or **Icarus Verilog**).

### Icarus Verilog + GTKWave

```bash
iverilog -o fir_test fir_filter.v tb_fir_filter.v
vvp fir_test
gtkwave dump.





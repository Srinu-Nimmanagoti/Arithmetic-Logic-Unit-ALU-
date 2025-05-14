# 🗒️ Arithmetic-Logic-Unit-(ALU)-Verilog | Vivado
This Verilog implementation presents a basic 8-bit Arithmetic Logic Unit (ALU) supporting five core operations: addition (ADD), subtraction (SUB), bitwise AND, OR, and NOT. The design takes two 8-bit inputs (a and b) and a 3-bit operation code (op) to select the desired operation, producing an 8-bit result and a zero_flag that indicates when the output equals zero. The testbench verifies all operations with clear decimal and binary test cases, demonstrating correct functionality for arithmetic calculations (10+20=30) and logical operations (10101010 AND 11001100=10001000), including zero detection (100-100 sets zero_flag). 
## 📁 Project Structure
```
fir_filter_project/
├── fir_filter.v          # FIR Filter Verilog module
├── tb_fir_filter.v       # Testbench for simulation
└── README.md             # Documentation

```

### Components
### Inputs:
* a (8-bit) – First operand for arithmetic/logical operations.
** b (8-bit) – Second operand (except for NOT, which uses only a).
* op (3-bit) – Operation selector (determines which operation to perform).
## Output:
* result (8-bit) – Output of the selected operation.
* zero_flag (1-bit) – Becomes 1 if result == 0, else 0.
### Operation Table
| Op Code | Operation | Description          | Example A | Example B | Result   | Zero Flag |
|---------|-----------|----------------------|-----------|-----------|----------|-----------|
| `000`   | `ADD`     | A + B                | `8'h0A`   | `8'h14`   | `8'h1E`  | `0`       |
| `001`   | `SUB`     | A - B                | `8'h1E`   | `8'h0F`   | `8'h0F`  | `0`       |
| `010`   | `AND`     | A & B (bitwise)      | `8'b1010` | `8'b1100` | `8'b1000`| `0`       |
| `011`   | `OR`      | A \| B (bitwise)     | `8'b1010` | `8'b1100` | `8'b1110`| `0`       |
| `100`   | `NOT`     | ~A (bitwise)         | `8'b1010` | `-`       | `8'b0101`| `0`       |
| `xxx`   | `-`       | Outputs zero         | Any       | Any       | `8'h00`  | `1`       |


## 🧪 How to Simulate

You can simulate this project using any Verilog simulator (e.g., **ModelSim**, **Vivado**, or **Icarus Verilog**).

### Icarus Verilog + GTKWave

```bash
iverilog -o fir_test fir_filter.v tb_fir_filter.v
vvp fir_test
gtkwave dump.





# ⚡ Instruction-Aware Fine-Grained Clock Gating in an Open Source RV32I Processor

![Status](https://img.shields.io/badge/Status-Completed-success)
![Language](https://img.shields.io/badge/Language-Verilog-blue)
![Processor](https://img.shields.io/badge/Processor-RISC--V-orange)
![FPGA](https://img.shields.io/badge/Platform-FPGA-success)
![License](https://img.shields.io/badge/License-MIT-yellow)

## 📖 Overview

This project implements an **Instruction-Aware Fine-Grained Clock Gating** technique for an open-source RV32I RISC-V processor.

The objective is to reduce dynamic power consumption by enabling clock signals only for the functional units required by the currently executing instruction.

The design is implemented using **Verilog HDL** and follows FPGA-friendly clock-enable techniques.

---

# ✨ Features

- Instruction-aware clock gating
- Fine-grained functional unit activation
- FPGA-friendly clock-enable implementation
- Reduced dynamic power consumption
- RTL implementation in Verilog HDL
- Testbench simulation

---

# 🛠 Technologies Used

- Verilog HDL
- Xilinx Vivado
- FPGA
- RISC-V (RV32I)

---

# 🎯 Objectives

- Identify instructions during the decode stage
- Generate clock-enable signals
- Activate only required functional units
- Reduce switching activity
- Improve power efficiency

---

# 🏗 Working

```
Instruction Fetch
        │
        ▼
Instruction Decode
        │
        ▼
Instruction Classification
        │
        ▼
Clock Enable Generation
        │
        ▼
Fine-Grained Clock Gating
        │
        ▼
Execute Instruction
```

---

# 📸 Results

## RTL Schematic

<img width="873" height="313" alt="image" src="https://github.com/user-attachments/assets/82bb7f03-e3e4-4b3c-bf38-8224f4d4eaa2" />

## Testbench Waveform

<img width="873" height="188" alt="image" src="https://github.com/user-attachments/assets/2077d71e-f358-401d-b660-e362b66c77dd" />

---

# 📂 Repository Contents

- gating_top.v
- gating_top_tb.v
- Report.pdf
- RTL.pdf

---

# 🚀 Future Improvements

- Adaptive Clock Gating
- Power Gating
- Machine Learning Based Clock Prediction
- ASIC Implementation
- Multi-core RV32I Support

---

# 👩‍💻 Team

- Nishmitha
- Prerana Shetty
- Sanjana Bhomkar
  
---

# 📜 License

MIT License

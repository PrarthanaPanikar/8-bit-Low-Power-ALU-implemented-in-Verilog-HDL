# 🚀 Low-Power 8-Bit ALU in Verilog HDL

<p align="center">
  <img src="images/rtl_schematic.png" width="700">
</p>

<p align="center">
  <b>RTL Design • Functional Verification • Waveform Analysis • Yosys RTL Schematic</b>
</p>

---

## 📑 Navigation

* [Project Overview](#-project-overview)
* [Features](#-features)
* [ALU Operations](#-alu-operations)
* [Project Structure](#-project-structure)
* [RTL Schematic](#-rtl-schematic)
* [Simulation Waveform](#-simulation-waveform)
* [Tools Used](#-tools-used)
* [How to Run](#-how-to-run)
* [Results](#-results)
* [Future Improvements](#-future-improvements)
* [Author](#-author)

---

## 📖 Project Overview

This project implements an **8-bit Low-Power Arithmetic Logic Unit (ALU)** using **Verilog HDL**.

The ALU performs arithmetic, logical, shift, and comparison operations based on a 4-bit opcode. Functional verification was carried out using **Icarus Verilog**, waveform analysis using **GTKWave**, and RTL schematic generation using **Yosys Open Synthesis Suite**.

---

## ✨ Features

✅ 8-bit ALU Design

✅ Arithmetic Operations

✅ Logical Operations

✅ Shift Operations

✅ Comparison Operation

✅ Carry Flag Generation

✅ Zero Flag Detection

✅ Negative Flag Detection

✅ Overflow Detection

✅ Functional Verification

✅ RTL Schematic Generation

---

## 🔢 ALU Operations

| Opcode | Operation           |
| ------ | ------------------- |
| 0000   | Addition (A + B)    |
| 0001   | Subtraction (A - B) |
| 0010   | AND                 |
| 0011   | OR                  |
| 0100   | XOR                 |
| 0101   | NOT A               |
| 0110   | Left Shift          |
| 0111   | Right Shift         |
| 1000   | Increment A         |
| 1001   | Decrement A         |
| 1010   | Compare A and B     |

---

## 📂 Project Structure

```text
Low-Power-ALU-Verilog/
│
├── rtl/
│   └── alu.v
│
├── tb/
│   └── alu_tb.v
│
├── waveforms/
│   └── alu.vcd
│
├── images/
│   ├── rtl_schematic.png
│   └── waveform.png
│
├── reports/
│
└── README.md
```

---

## 🏗 RTL Schematic

RTL schematic generated using **Yosys Open Synthesis Suite**.

<p align="center">
 <img src="C:\Users\My Dell\OneDrive\Desktop\EDCIIT\VLSI\Low-Power-ALU-Verilog\images\Screenshot 2026-06-18 015158.png" width="900">
</p>

---

## 📈 Simulation Waveform

Waveform generated using **GTKWave** after simulation.

<p align="center">
  <img src="C:\Users\My Dell\OneDrive\Desktop\EDCIIT\VLSI\Low-Power-ALU-Verilog\images\Screenshot 2026-06-18 013152.png" width="900">
</p>

---

## 🛠 Tools Used

| Tool           | Purpose                  |
| -------------- | ------------------------ |
| Verilog HDL    | RTL Design               |
| Icarus Verilog | Compilation & Simulation |
| GTKWave        | Waveform Analysis        |
| Yosys          | RTL Schematic Generation |
| VS Code        | Development Environment  |
| GitHub         | Version Control          |

---

## ▶ How to Run

### Compile

```bash
iverilog -o alu_sim rtl/alu.v tb/alu_tb.v
```

### Run Simulation

```bash
vvp alu_sim
```

### Open Waveform

```bash
gtkwave alu.vcd
```

### Generate RTL Schematic

```bash
yosys
read_verilog rtl/alu.v
hierarchy -top alu
proc
opt
show
```

---

## 📊 Results

* Successfully designed an 8-bit ALU in Verilog HDL.
* Verified functionality using a self-checking testbench.
* Generated waveform outputs using GTKWave.
* Generated RTL schematic using Yosys.
* Validated arithmetic, logical, shift, and comparison operations.

---

## 🚀 Future Improvements

* Parameterized ALU Width (8/16/32-bit)
* Operand Isolation Techniques
* Clock Gating Integration
* Power Analysis
* FPGA Implementation
* Advanced Verification Environment

---

## 👩‍💻 Author

**Prarthana Panikar**

Computer Science Engineering Student

Interested in:

* VLSI Design
* Digital Electronics
* FPGA Design
* AI/ML


⭐ If you found this project useful, consider giving it a star.

<div align="center">

# 🔌 Verilog HDLBits Solutions

[![HDLBits](https://img.shields.io/badge/Platform-HDLBits-blue?style=for-the-badge)](https://hdlbits.01xz.net/)
[![Language](https://img.shields.io/badge/Language-Verilog-orange?style=for-the-badge)](https://en.wikipedia.org/wiki/Verilog)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)
[![Portfolio](https://img.shields.io/badge/VLSI%20Portfolio-8%20Repos-purple?style=for-the-badge)](https://github.com/abhichandra586)

**Structured, topic-by-topic Verilog solutions to every HDLBits problem — part of an 8-repo VLSI design portfolio.**

</div>

---

## 📖 About

[HDLBits](https://hdlbits.01xz.net/) is a collection of small circuit design exercises for practising digital hardware design using Verilog. This repository contains clean, well-commented solutions to every problem, organized by topic in the same order as the official HDLBits website. It serves as both a personal reference and a structured learning path for anyone studying Verilog and RTL design fundamentals.

> **Part of a broader VLSI learning portfolio** — visit [github.com/abhichandra586](https://github.com/abhichandra586) to explore the full set of repositories covering synthesis and simulation.

---

## 📁 Repository Structure

```
verilog-hdlbits/
├── 01-getting-started/        # First steps with Verilog
├── 02-basics/                 # Wire, gate, and combinational logic fundamentals
├── 03-vectors/                # Vector declarations, slicing, and operations
├── 04-modules-hierarchy/      # Module instantiation and hierarchy
├── 05-procedures/             # Always blocks, if/case statements
├── 06-more-verilog-features/  # Advanced operators and replication
└── README.md
```

---

## 📂 Folder Breakdown

### 01 · Getting Started

> Introductory problems designed to familiarize you with the HDLBits environment and the most basic Verilog syntax.

| File | Problem |
|------|---------|
| `step_one.v` | Step One — output a constant logic-1 |
| `output_zero.v` | Output Zero — drive a wire to logic-0 |

---

### 02 · Basics

> Combinational logic using simple wire assignments and fundamental logic gates. Covers the building blocks of any digital circuit.

| File | Problem |
|------|---------|
| `simple_wire.v` | Simple Wire — pass a signal through |
| `four_wires.v` | Four Wires — connect multiple ports |
| `wire_decl.v` | Declaring Wires — intermediate wire signals |
| `and_gate.v` | AND Gate |
| `nor_gate.v` | NOR Gate |
| `not_gate.v` | NOT Gate |
| `xnor_gate.v` | XNOR Gate |
| `7458_chip.v` | 7458 Chip — multi-gate combinational circuit |

---

### 03 · Vectors

> Vector (bus) declarations, part-selects, concatenation, and replication — essential for working with multi-bit data paths.

| File | Problem |
|------|---------|
| `vector0.v` | Vector0 — basic 3-bit vector |
| `vector1.v` | Vector1 — part-selects |
| `vector2.v` | Vector2 — 32-bit endianness and splits |
| `vector3.v` | Vector3 — Concatenation operator |
| `vector4.v` | Vector4 — Replication operator |
| `vector5.v` | Vector5 — More replication |
| `vector_r.v` | Vector Reversal — reverse bit order |
| `vector_gates.v` | Vector Gates — bitwise operations on buses |
| `gates4.v` | 4-Input Gates — AND/OR/XOR across vectors |

---

### 04 · Modules & Hierarchy

> Structural Verilog: instantiating modules by position and by name, building adder chains, and constructing hierarchical designs.

| File | Problem |
|------|---------|
| `module.v` | Module — instantiate a sub-module |
| `module_pos.v` | Connecting Ports by Position |
| `module_name.v` | Connecting Ports by Name |
| `module_shift.v` | Module Shift — chained D flip-flop instances |
| `module_shift8.v` | Module Shift 8 — 8-bit shift using instances |
| `adder1.v` | Module Add — 16-bit adder from two 8-bit adders |
| `adder2.v` | Adder — carry ripple adder hierarchy |
| `carry_select_adder.v` | Carry Select Adder |
| `module_addsub.v` | Adder-Subtractor — XOR-based sign control |

---

### 05 · Procedures

> Behavioural Verilog using `always` blocks, `if-else` conditionals, `case` statements, and latch avoidance techniques.

| File | Problem |
|------|---------|
| `always_block1.v` | Always Block 1 — combinational `always @(*)` |
| `always_block2.v` | Always Block 2 — clocked `always @(posedge clk)` |
| `always_if.v` | Always If — priority mux with if-else |
| `always_if2.v` | Always If 2 — avoiding unintended latches |
| `always_case.v` | Always Case — 6-to-1 multiplexer |
| `always_case2.v` | Always Case 2 — priority encoder |
| `always_casez.v` | Always CaseZ — don't-care matching |
| `always_nolatches.v` | Always No Latches — keyboard scancode decoder |

---

### 06 · More Verilog Features

> Advanced language features: reduction operators, the ternary conditional, generate-style replication, and large gate arrays.

| File | Problem |
|------|---------|
| `reduction_operators.v` | Reduction Operators — `&`, `|`, `^` across all bits |
| `ternary_operator.v` | Ternary Operator — conditional expression in `assign` |
| `vector_100r.v` | Vector Reversal 2 — 100-bit bit-reversal with `generate` |
| `gates100.v` | Gates 100 — 100-bit gate array |
| `255-bit-population-count.v` | Population Count — count set bits in a 255-bit vector |

---

## 🛠️ Tools & Environment

| Tool | Purpose |
|------|---------|
| **Icarus Verilog** (`iverilog`) | Open-source Verilog simulation & compilation |
| **GTKWave** | Waveform viewer for `.vcd` dump files |
| **HDLBits Online Judge** | Automated testbench & instant feedback |

All `.v` files are written in **Verilog-2001** and are compatible with any standard simulator.

---

## 🚀 How to Use

**Browse and study** — each file is self-contained and directly maps to an HDLBits problem. Open the file, read the module, then try the problem yourself on HDLBits before comparing.

**Simulate locally** — any solution can be compiled and run with Icarus Verilog:

```bash
# Compile a solution
iverilog -o sim output_zero.v

# Run simulation
vvp sim

# View waveforms (if a testbench is present)
gtkwave dump.vcd
```

---

## 📊 Progress

| Section | Problems Solved |
|---------|----------------|
| 01 · Getting Started | 2 / 2 ✅ |
| 02 · Basics | 8 / 8 ✅ |
| 03 · Vectors | 9 / 9 ✅ |
| 04 · Modules & Hierarchy | 9 / 9 ✅ |
| 05 · Procedures | 8 / 8 ✅ |
| 06 · More Verilog Features | 5 / 5 ✅ |
| **Total** | **41 / 41** |

---

## 👤 Author

**Abhi Chandra**
GitHub: [@abhichandra586](https://github.com/abhichandra586)

---

<div align="center">
<sub>⭐ If this repository helped you, consider starring it!</sub>
</div>

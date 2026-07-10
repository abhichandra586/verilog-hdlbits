# 🔌 Verilog HDLBits Solutions

> Structured, topic-by-topic Verilog solutions to every HDLBits problem — part of an 8-repo VLSI design portfolio.

---

## 📖 About

HDLBits is a collection of small circuit design exercises for practising digital hardware design using Verilog. This repository contains clean, well-commented solutions to every problem, organized by topic in the same order as the official HDLBits website. It serves as both a personal reference and a structured learning path for anyone studying Verilog and RTL design fundamentals.

Part of a broader VLSI learning portfolio — visit [github.com/abhichandra586](https://github.com/abhichandra586) to explore the full set of repositories covering synthesis and simulation.

## 📁 Repository Structure
```
verilog-hdlbits/
├── 01-getting-started/       # First steps with Verilog
├── 02-basics/                # Wire, gate, and combinational logic fundamentals
├── 03-vectors/               # Vector declarations, slicing, and operations
├── 04-modules-hierarchy/     # Module instantiation and hierarchy
├── 05-procedures/            # Always blocks, if/case statements
├── 06-more-verilog-features/ # Advanced operators and replication
├── 07-basic-gates/           # Basic gate problems and combinational circuits
├── 08-multiplexers/          # Multiplexer designs
├── 09-arithmetic-circuits/   # Adders and arithmetic building blocks
├── 10-karnaugh-maps/         # K-map simplification to circuits
├── 11-latches-and-flipflops/ # Sequential logic: latches and D flip-flops
├── 12-counters/              # Binary, decade, and decimal counters
├── 13-shift-registers/       # Shift registers, rotators, and LFSRs
└── README.md
```

## 📂 Folder Breakdown

### 01 · Getting Started

Introductory problems designed to familiarize you with the HDLBits environment and the most basic Verilog syntax.

| File | Problem |
|------|---------|
| `step_one.v` | Step One — output a constant logic-1 |
| `output_zero.v` | Output Zero — drive a wire to logic-0 |

### 02 · Basics

Combinational logic using simple wire assignments and fundamental logic gates. Covers the building blocks of any digital circuit.

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

### 03 · Vectors

Vector (bus) declarations, part-selects, concatenation, and replication — essential for working with multi-bit data paths.

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

### 04 · Modules & Hierarchy

Structural Verilog: instantiating modules by position and by name, building adder chains, and constructing hierarchical designs.

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

### 05 · Procedures

Behavioural Verilog using always blocks, if-else conditionals, case statements, and latch avoidance techniques.

| File | Problem |
|------|---------|
| `always_block1.v` | Always Block 1 — combinational always @(*) |
| `always_block2.v` | Always Block 2 — clocked always @(posedge clk) |
| `always_if.v` | Always If — priority mux with if-else |
| `always_if2.v` | Always If 2 — avoiding unintended latches |
| `always_case.v` | Always Case — 6-to-1 multiplexer |
| `always_case2.v` | Always Case 2 — priority encoder |
| `always_casez.v` | Always CaseZ — don't-care matching |
| `always_nolatches.v` | Always No Latches — keyboard scancode decoder |

### 06 · More Verilog Features

Advanced language features: reduction operators, the ternary conditional, generate-style replication, and large gate arrays.

| File | Problem |
|------|---------|
| `reduction_operators.v` | Reduction Operators — &, \|, ^ across a vector |
| `ternary_operator.v` | Ternary Operator — conditional expression in assign |
| `vector_100r.v` | Vector Reversal 2 — 100-bit bit-reversal with generate |
| `gates100.v` | Gates 100 — 100-bit gate array |
| `255-bit-population-count.v` | Population Count — count set bits in a 255-bit vector |

### 07 · Basic Gates

Classic gate-level and combinational problems covering truth tables, simple circuit synthesis, and multi-gate structures.

| File | Problem |
|------|---------|
| `wire.v` | Wire — pass-through wire |
| `ground.v` | Ground — drive output to logic-0 |
| `nor_gate.v` | NOR Gate |
| `another_gate.v` | Another Gate — XNOR |
| `two_gates.v` | Two Gates — chain of gates |
| `more_logic_gates.v` | More Logic Gates — 7 gates on same inputs |
| `7420_chip.v` | 7420 Chip — dual 4-input NAND |
| `truth_tables.v` | Truth Tables — synthesize from truth table |
| `simple_circuitA.v` | Simple Circuit A |
| `simple_circuitB.v` | Simple Circuit B |
| `combine_ab.v` | Combine A and B |
| `ring_or_vibrate.v` | Ring or Vibrate |
| `thermostat.v` | Thermostat |
| `2bit_equality.v` | Two-bit Equality |
| `gates_and_vectors.v` | Gates and Vectors — bitwise ops on buses |
| `gates_v100.v` | Longer Vectors and Gates — 100-bit gate array |
| `pop_count3.v` | 3-bit Population Count |

### 08 · Multiplexers

Multiplexer designs of various widths using assign statements, case constructs, and bit-select indexing.

| File | Problem |
|------|---------|
| `mux2to1.v` | 2:1 Multiplexer |
| `mux2to1_100bit.v` | 2:1 Bus Multiplexer — 100-bit wide |
| `mux_9to1.v` | 9:1 Multiplexer |
| `mux_256to1.v` | 256:1 Multiplexer |
| `mux_256to1_4bit.v` | 256:1 4-bit Multiplexer |

### 09 · Arithmetic Circuits

Fundamental arithmetic building blocks: half adders, full adders, ripple-carry adders, wide binary adders, BCD arithmetic, and overflow detection.

| File | Problem |
|------|---------|
| `half_adder.v` | Half Adder |
| `full_adder.v` | Full Adder |
| `3bit_binary_adder.v` | 3-bit Binary Adder |
| `adder.v` | Adder — ripple-carry adder |
| `signed_add_overflow.v` | Signed Addition Overflow — detect 2's complement overflow |
| `100bit_bin_adder.v` | 100-bit Binary Adder |
| `4digit_bcd_adder.v` | 4-digit BCD Adder — chained BCD full adders |

### 10 · Karnaugh Maps

Translating Karnaugh maps into minimal SOP/POS circuit implementations, including don't-care handling and mux-based realizations.

| File | Problem |
|------|---------|
| `kmap1.v` | K-map 1 — 3-variable map |
| `kmap2.v` | K-map 2 — 4-variable map |
| `kmap3.v` | K-map 3 — 4-variable map with don't-cares |
| `kmap4.v` | K-map 4 — 4-variable map |
| `min_sop_and_pos.v` | Minimum SOP and POS |
| `kmap5.v` | K-map 5 |
| `kmap6.v` | K-map 6 |
| `kmap_with_mux.v` | K-map implemented with a Multiplexer |

### 11 · Latches and Flip-Flops

Sequential logic fundamentals: D flip-flops, synchronous vs. asynchronous resets, byte enables, intentional latch inference, mux-FF combinations, JK flip-flops, and edge detection.

| File | Problem |
|------|---------|
| `dff.v` | D Flip-Flop |
| `dffs.v` | D Flip-Flops — 8-bit register |
| `dff_with_reset.v` | DFF with (synchronous) Reset |
| `dff_with_reset_value.v` | DFF with Reset Value — reset to a non-zero constant |
| `dff_async_reset.v` | DFF with Asynchronous Reset |
| `dff_with_byte_enable.v` | Dff16e — 16-bit DFF with byte enables and sync active-low reset |
| `d_latch.v` | Exams/m2014_q4a — D Latch with enable |
| `dff1.v` | Exams/m2014_q4b — DFF with async reset |
| `dff2.v` | Exams/m2014_q4c — DFF with sync reset |
| `dff_with_gate.v` | Exams/m2014_q4d — DFF with XOR feedback gate |
| `dff_with_mux1.v` | Mt2015_muxdff — Mux + DFF submodule |
| `dff_with_mux2.v` | Exams/2014_q4a — Two muxes + DFF with load and enable |
| `dffs_and_gates.v` | Exams/ece241_2014_q4 — Three DFFs with gate feedback |
| `jkff.v` | Exams/ece241_2013_q7 — JK Flip-Flop |
| `edge_detect.v` | Edgedetect — Detect a rising edge per bit |
| `edge_detect2.v` | Edgedetect2 — Detect any edge per bit |
| `edge_capture_register.v` | Edgecapture — Capture falling edges until reset |
| `dual_edge_triggered_ff.v` | Dualedge — Dual-edge triggered flip-flop |

### 12 · Counters

Binary, decade, and BCD counters with enables, slow-count strategies, and multi-digit cascading — culminating in a 12-hour clock.

| File | Problem |
|------|---------|
| `4bit_bin_counter.v` | Count15 — 4-bit binary counter |
| `decade_counter.v` | Count10 — decade counter (0–9) |
| `counter_1to10.v` | Count1to10 — counter from 1 to 10 |
| `slow_decade_counter.v` | Countslow — decade counter with slow enable |
| `counter_1to12.v` | Counter1-12 — 1-to-12 counter with load and enable |
| `counter_1000.v` | Counter1000 — 1 Hz pulse from a 1000 Hz clock |
| `4digit_decimal_counter.v` | Countbcd — 4-digit BCD counter with digit enables |
| `12_hour_clock.v` | Count clock — 12-hour clock with AM/PM |

### 13 · Shift Registers

Shift registers, rotators, arithmetic shifters, and linear feedback shift registers (LFSRs) — including structural mux-DFF designs and a 3-input LUT built from a shift register.

| File | Problem |
|------|---------|
| `4bit_shift_register.v` | Shift4 — 4-bit shift register with async reset, load, and enable |
| `left_right_rotator.v` | Rotate100 — 100-bit left/right rotator with load |
| `left_right_arithmetic_shift.v` | Shift18 — 64-bit arithmetic shift register |
| `5bit_lfsr.v` | Lfsr5 — 5-bit maximal-length Galois LFSR |
| `3bit_lfsr.v` | Mt2015 lfsr — 3-bit LFSR with FPGA-style ports |
| `lfsr32.v` | Lfsr32 — 32-bit Galois LFSR (taps 32, 22, 2, 1) |
| `shift4_sync_resetn.v` | Exams/m2014_q4k — 4-bit shift register with sync active-low reset |
| `muxdff_shift4.v` | Exams/2014_q4b — n-bit shift register from MUXDFF subcircuits |
| `lut3_shift8.v` | Exams/ece241_2013_q12 — 3-input LUT from an 8-bit shift register |

## 🛠️ Tools & Environment

| Tool | Purpose |
|------|---------|
| Icarus Verilog (iverilog) | Open-source Verilog simulation & compilation |
| GTKWave | Waveform viewer for .vcd dump files |
| HDLBits Online Judge | Automated testbench & instant feedback |

All `.v` files are written in Verilog-2001 and are compatible with any standard simulator.

## 🚀 How to Use

Browse and study — each file is self-contained and directly maps to an HDLBits problem. Open the file, read the module, then try the problem yourself on HDLBits before comparing.

Simulate locally — any solution can be compiled and run with Icarus Verilog:

```bash
# Compile a solution
iverilog -o sim output_zero.v

# Run simulation
vvp sim

# View waveforms (if a testbench is present)
gtkwave dump.vcd
```

## 📊 Progress

| Section | Problems Solved |
|---------|----------------|
| 01 · Getting Started | 2 / 2 ✅ |
| 02 · Basics | 8 / 8 ✅ |
| 03 · Vectors | 9 / 9 ✅ |
| 04 · Modules & Hierarchy | 9 / 9 ✅ |
| 05 · Procedures | 8 / 8 ✅ |
| 06 · More Verilog Features | 5 / 5 ✅ |
| 07 · Basic Gates | 17 / 17 ✅ |
| 08 · Multiplexers | 5 / 5 ✅ |
| 09 · Arithmetic Circuits | 7 / 7 ✅ |
| 10 · Karnaugh Maps | 8 / 8 ✅ |
| 11 · Latches and Flip-Flops | 18 / 18 ✅ |
| 12 · Counters | 8 / 8 ✅ |
| 13 · Shift Registers | 9 / 9 ✅ |
| **Total** | **113 solved** |

## 👤 Author

Abhi Chandra — GitHub: [@abhichandra586](https://github.com/abhichandra586)

---

⭐ If this repository helped you, consider starring it!

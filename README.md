# multiplier
##  4-bit Multiplier (Verilog)

This project implements a **basic 4-bit binary multiplier** using **AND gates** and **Ripple Carry Adders (RCA)**. It multiplies two 4-bit input numbers and produces the corresponding binary product.

---

##  Working Principle

The multiplication is performed using the standard **shift-and-add method**:

* Partial products are generated using **AND gates**
* These partial products are then summed using **Ripple Carry Adders (RCA)**
* The final output represents the product of two 4-bit numbers

---

##  Module Description

###  `multiplier`

* Top-level module for 4-bit multiplication
* Generates partial products using AND gates
* Uses RCAs to sum intermediate results
* Produces the final multiplication output

---

###  `basic_RCA`

* Implements a **Ripple Carry Adder**
* Built by cascading multiple full adders
* Used to add partial products during multiplication

---

###  `basic_full_adder`

* Implements a **single-bit Full Adder**
* Performs addition of:

  * Two input bits
  * One carry-in
* Produces:

  * Sum
  * Carry-out

---

##  Inputs & Outputs

| Signal | Width | Description    |
| ------ | ----- | -------------- |
| A      | 4-bit | First operand  |
| B      | 4-bit | Second operand |
| O      | 8-bit | Product output |

---

##  Key Concepts Used

* Binary Multiplication
* Partial Product Generation
* Ripple Carry Addition
* Combinational Logic Design

---

##  Applications

* Digital Arithmetic Units
* ALU Design
* FPGA-based Systems
* Embedded Digital Circuits

---




# Matrix-to-Vector Multiplication Leveraging RRAM Crossbar

This repository contains the project Matrix-to-Vector Multiplication Leveraging RRAM Crossbar that I developed for CS248 - Advanced Design of VLSI Circuits and Systems taught by Prof. Gage Hills in the Spring of 2022.

<p align="center">
  <img  width = '500px' src="https://raw.githubusercontent.com/matheussfarias/cs248/main/gage_proposal.png">
</p>

## Relevant Files

1. `crossbar_mvm` (1R)
2. `crossbar_mvm_digital_res_cell` (1T1R digital res)
3. `crossbar_rram_dres` (1T1R with RRAM)
4. `digital_res_4bits_nmos` (4 bit digital res architecture)
5. `digital_res_4bits_nmos_simulation` (digital res 1 cell simulation)
6. `rram_digital_res` (1T1R with RRAM architecture)
7. `simulate_crossbar` (simulation 1R crossbar)
8. `simulate_crossbar_digital_res` (simulation 1T1R digital res)

## How to run a RRAM simulation (old)

1. Go to `code/simulation/input.rram.scs`;
2. Change line 32 to the piecewise linear values for $V_G$ and line 37 for $V_D$;
3. Save this file, go to the cluster and copy it to `rram_model/netlist_mine`;
4. Run `make clean` and `make sim` at `rram_model/netlist_mine` in the cluster terminal;
5. Go to `rram_model/netlist_mine/input.rram.raw/`;
6. Copy the file `tran.tran.tr0`, come back to the folder `code/simulation/` and paste it there;
7. Go to `code/` and run `make clean` and `make` in the terminal;
8. The plots will be shown in `code/images`.

Make sure to read the example in line 35 of `code/simulation/input.rram.scs` to follow the same pattern. **Always use the time in nanoseconds**.

## Milestones

### Apr. 24

1. ~~Run through the template files: `dac_controller_digital` and `dac_example`;~~
2. ~~Schematic + simulation of 3x3 crossbar with resistors, also with 1T1R element.~~

### May 1

1. ~~Get RRAM circuit model up and running;~~
2. ~~Schematic + simulation of RRAM crossbar, combining FETs from xr013 PDK and RRAM circuit model.~~

### May 8

1. ~~Schematic + simulation + layout of crossbar in XFAB PDK, with access to I/O pads or top-layer-metal pads for additional fabrication of RRAM on top;~~
2. ~~Final write-up.~~

### Optional

1. Development of control circuitry (DACs, ADCs);
2. Digital control interface + connection to AHB bus;
3. Tape-out.
4. Actually program the RRAM and simulate it



### Matheus Farias
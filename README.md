# rjvdp

A retro-inspired VDP built with [Digital](https://github.com/hneemann/Digital).

## Description

This is a VDP built from scratch in a visual way using a digital circuit simulator called [Digital](https://github.com/hneemann/Digital). This is then able to be exported to verilog or VHDL and that can be converted into a digital circuit that can run on an [FPGA](https://en.wikipedia.org/wiki/Field-programmable_gate_array).

This VDP is designed to work with DVI over HDMI with a PMOD.

The circuit is a retro inspired Video Display Processor (VDP), sometimes also known as a Video Display Unit (VDU), or Picture Processing Unit (PPU). It's designed to work similarly to a late 80s graphics system like in the Commodore 64 / Amiga, or the various Nintendo or Sega consoles of that era.

### Status

- [x] Displays to screen
- [x] Palette lookups
- [ ] Line buffer
- [ ] Tile pixels
- [ ] Tile maps
- [ ] Sprite sheets
- [ ] Sprites

## Building and Running

For the simulation, open `dig/top_simvga.dig` in [Digital](https://github.com/hneemann/Digital).

For the verilog version, install `fusesoc` and all the open source FPGA tools, then run `make`.

### FuseSOC

FuseSOC is used for building the project.

## Contributing

**Contributions are welcome!**

- Please follow the existing style and implement as much as possible in the Digital simulation rather than verilog.
- Fork and submit a PR
- I will be showing all contributions in youtube videos showing what you changed. I will give you credit unless you wish to be anonymous.

## Contributors

Only rj45 (so far)

## License

This project is licensed under the MIT License - see the LICENSE file for details.

NOTE: The youtube videos do not fall under this license. They are under the standard youtube copyright, and I ask you not re-publish them elsewhere. You can create your own youtube videos with the content in this repo, however.

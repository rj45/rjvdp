# Comment this out if you have the 12bpp HDMI DVI PMOD
USE24BPP=--flag use24bpp

.PHONY: sim
sim:
	fusesoc run --target sim rj45:rjvdp:soc

.PHONY: icezero
icezero:
	fusesoc run --target icezero $(USE24BPP) rj45:rjvdp:soc

.PHONY: iceupload
iceupload: icezero
	scp build/rj45_rjvdp_soc_1.0.0/icezero-icestorm/rj45_rjvdp_soc_1.0.0.bin pi@raspberrypi.local:~/icezero.bin

.PHONY: colorlight
colorlight:
	fusesoc run --target colorlight rj45:rjvdp:soc

.PHONY: colorlightupload
colorlightupload: colorlight
	ecpdap flash write -f 10000 build/rj45_rjvdp_soc_1.0.0/colorlight-trellis/rj45_rjvdp_soc_1.0.0.bit

.PHONY: colorlightprog
colorlightprog: colorlight
	ecpdap program -f 50000 build/rj45_rjvdp_soc_1.0.0/colorlight-trellis/rj45_rjvdp_soc_1.0.0.bit


.PHONY: clean
clean:
	rm -rf build fusesoc/build

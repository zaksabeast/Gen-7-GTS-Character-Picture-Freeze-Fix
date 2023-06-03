.PHONY: sm usum or as xy clean

sm:
	@armips gen7.s -equ PLAYER_IMAGE_LOCATION 0x330d6824 -equ PROCESS_CHARACTER_IMAGE 0x2fd1e0 -equ ERROR_CASE 0x2fd1fc
	@flips -c code.bin code_patched.bin code.ips

usum:
	@armips gen7.s -equ PLAYER_IMAGE_LOCATION 0x3301286c -equ PROCESS_CHARACTER_IMAGE 0x306c38 -equ ERROR_CASE 0x306c64
	@flips -c code.bin code_patched.bin code.ips

or:
	@armips gen6.s -equ GET_COLOR 0x41aa28
	@flips -c code.bin code_patched.bin code.ips

as:
	@armips gen6.s -equ GET_COLOR 0x41aa20
	@flips -c code.bin code_patched.bin code.ips

xy:
	@armips gen6.s -equ GET_COLOR 0x3f8030
	@flips -c code.bin code_patched.bin code.ips

clean:
	@rm *.bin *.ips

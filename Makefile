.PHONY: sm usum clean

sm:
	@armips main.s -equ PLAYER_IMAGE_LOCATION 0x330d6824 -equ PROCESS_CHARACTER_IMAGE 0x2fd1e0 -equ ERROR_CASE 0x2fd1fc
	@flips -c code.bin code_patched.bin code.ips

usum:
	@armips main.s -equ PLAYER_IMAGE_LOCATION 0x3301286c -equ PROCESS_CHARACTER_IMAGE 0x306c38 -equ ERROR_CASE 0x306c64
	@flips -c code.bin code_patched.bin code.ips

clean:
	@rm code_patched.bin code.ips

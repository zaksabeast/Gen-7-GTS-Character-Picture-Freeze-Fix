.3ds
.arm

.open "code.bin", "code_patched.bin", 0x100000

.org GET_COLOR_INDEX
  mov        r0,#0x0
  bx         lr

.close

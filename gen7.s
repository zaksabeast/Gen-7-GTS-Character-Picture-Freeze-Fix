.3ds
.arm

.open "code.bin", "code_patched.bin", 0x100000

; This is close to the start of a routine that
; does stuff with the profile image
.org PROCESS_CHARACTER_IMAGE
    ; There's an error case handled here
    ; that is never hit naturally, so we should be
    ; safe to replace it with our own instructions
    b ERROR_CASE

; Depending on the game (sm or usum), this will either set some
; values or return 0 without doing anything else.
; We'll replace this with setting our own profile image as every image
.org ERROR_CASE
    ; r1 and r5 need the location to the player image
    ldr r1, [@player_image_location]
    mov r5, r1
    ; Jump back to the original flow
    b PROCESS_CHARACTER_IMAGE + 4
    @player_image_location:
        .word PLAYER_IMAGE_LOCATION

.close

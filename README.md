# Gen 7 Character Picture Freeze Fix

The Gen 7 GTS sometimes has posts with garbage character pictures that cause people's games to freeze or crash when viewed. In theory this can also occur outside the GTS.

This patch prevents freezing and crashing by replacing all character pictures with the user's own character picture. Since that should be valid, the GTS will never freeze or crash.

Rather than solving individual bugs, I took the approach of replacing character pictures entirely to prevent future bugs from being exploited, and because it was faster.

## Building

1. Install [armips](https://github.com/Kingcom/armips.git) and [flips](https://github.com/Alcaro/Flips.git)
1. Extract your Gen 7 game's code.bin (possibly with [GM9](https://github.com/d0k3/GodMode9) and [ctrtool](https://github.com/3DSGuy/Project_CTR))
1. Clone the repository and place the code.bin in the repository directory
1. Run `make sm` to build the Sun and Moon patch or `make usum` to build the Ultra Sun and Ultra Moon patch

You should have a `code_patched.bin` and `code.ips` produced.

## Usage

1. Download or build the `code.ips` file
1. Copy the file to your SD card
   - Sun: `/luma/titles/0004000000164800/code.ips`
   - Moon: `/luma/titles/0004000000175E00/code.ips`
   - Ultra Sun: `/luma/titles/00040000001B5000/code.ips`
   - Ultra Moon: `/luma/titles/00040000001B5100/code.ips`
1. Enjoy the GTS

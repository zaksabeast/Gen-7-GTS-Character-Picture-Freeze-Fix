# 3ds Pokemon GTS Crash Fix

The Gen 6 and 7 GTS has posts with garbage data that cause people's games to freeze or crash when viewed.

For Gen 7 the patch fixes the issue by replacing all character pictures with the user's own character picture. Rather than solving individual bugs, I took the approach of replacing character pictures entirely to prevent future bugs from being exploited, and because it was faster.

Two years later a patch for Gen 6 was added. The patch fixes a color index. Not as defensive as Gen 7, but that's fine for now.

## Building

1. Install [armips](https://github.com/Kingcom/armips.git) and [flips](https://github.com/Alcaro/Flips.git)
1. Extract your game's code.bin (possibly with [GM9](https://github.com/d0k3/GodMode9) and [ctrtool](https://github.com/3DSGuy/Project_CTR))
1. Clone the repository and place the code.bin in the repository directory
1. Run `make <game>` where 'game' is `sm`, `usum`, `xy`, or `oras`.

You should have a `code.ips` produced.

## Usage

1. Download and unzip `patches.zip` from the release
1. Copy the directories to `/luma/titles`
1. Enjoy the GTS

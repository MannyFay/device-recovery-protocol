# Device Recovery Protocol
This repository is under construction.  
It is only for my purposes and only tested in my environments. There is absolutely no garantuee, that it works for you.  
I've made it public, that I can read and use it from everywhere just by using a browser to get my dev environment working again as fast as possible.

## macOS
### P:
Device is ran into 'no more space available' state.
(Tested on Sonoma)
### S:
If a step doesn't work, proceed with the next step.
- Empty bin
- Empty downloads, then empty bin
- Start in 'safe mode' and try to delete things:
  - Shut down device
  - Press and hold the power button till 'Loading system options' message occurs
  - Press and hold shift while pressing the start up hard disk (system uses now only basic features - more space is available by this)
  - Open Launchpad
  - Open Terminal
  - Delete files (`rm -f file-name`) and/or directories (`rm -rf directory-name`)
  - Restart device
- Start 'Recovery Mode' and try to delete thins:
  - Shut down device
  - Press and hold the power button till 'Loading system options' message occurs
  - Press 'Options' and 'Continue'
  - Provide your device password (password of your Mac user account)
  - Start 'Terminal' from the menu bar on the left side
  - Delete files (`rm -f file-name`) and/or directories (`rm -rf directory-name`)
  - Restart device
- Erase user volume partition (erases all your specific user settings too - if device setup is case sensitive, like described [here](https://github.com/MannyFay/set-up-dev-machine/blob/main/docs/set-up-macos.md), all your installed applications will stay)
  - Shut down device
  - Press and hold the power button till 'Loading system options' message occurs
  - Press 'Options' and 'Continue'
  - Provide your device password (password of your Mac user account)
  - Start 'Terminal' from the menu bar on the left side
  - Run `diskutil list` to identify the partition name (`/dev/some-identifier`) that you have to erase
  - Run `diskutil unmountDisk force /dev/some-identifier` to unmount the partition
  - Quit Terminal through the top menu bar at the left side
  - Select 'Disk Utilities' and press 'Continue'
  - Select partition and press 'Erase'
  - Press 'OK' on the dialogue (don't change any setting in the dialogue)
  - Restart device and login



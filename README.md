# Device Recovery Protocol
This repository is under construction.  
It is only for my purposes and only tested in my environments. There is absolutely no garantuee, that it works for you.  
I've made it public, that I can read and use it from everywhere just by using a browser to get my dev environment working again as fast as possible.

It is good to always have a second device that is made ready for your work.

Next Steps:  
- ✅ Document all required settings  
- [ ] Try to create recovery playbook with Ansible
- [ ] Try to create device set up playbook with Ansible like for Ubuntu  
- [ ] Put everything you can to password manager, GitHub and GitLab  
- [ ] Never beeing fucked again !!!  


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
- Start 'Recovery Mode' and try to delete things:
  - Shut down device
  - Press and hold the power button till 'Loading system options' message occurs
  - Press 'Options' and 'Continue'
  - Provide your device password (password of your Mac user account)
  - Start 'Terminal' from the menu bar on the left side
  - Delete files (`rm -f file-name`) and/or directories (`rm -rf directory-name`)
  - Restart device
- Try to recover from a Time Machine backup (if you changed something on the users partition, this does't work)
- Erase user volume partition (erases all your specific user settings too - if device setup is case sensitive, like described [here](https://github.com/MannyFay/set-up-dev-machine/blob/main/docs/set-up-macos.md), all your installed applications will stay - all your short cut settings will be gone)
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

## Steps after this
- ✅ Notifications:
  - ✅ Set 'Show previews' on 'Never'
  - ✅ Turn off 'Allow notifications when the display is sleeping'
  - ✅ Turn off 'Allow notifications when the screen is locked'
  - ✅ Turn off 'Allow notifications when mirroring or sharing the display'
  - ✅ Turn off all notifications of 'Game Center'
  - ✅ Turn off all notifications of 'Mail'
  - ✅ Turn off all notifications of 'Messages'
  - ✅ Turn off all notifications of 'NordPass'
  - ✅ Turn off all notifications of 'ScanSnap Home'
  - ✅ Turn off all notifications of 'ScanSnap SCloudWatch'
  - ✅ Turn off all notifications of 'Tips'
  - ✅ Turn off all notifications of 'Wallet'
- ✅ Sound:
  - ✅ Mute 'Alert volume'
  - ✅ Turn off 'Play sound on start up'
  - ✅ Turn off 'Play user interface sound effects'
  - ✅ Turn off 'Play feedback when volume is changed'
- Focus:
  - [ ] Create 'Work' focus
  - [ ] Set schedule on weekdays from 6:00 am till 5:00 pm
  - [ ] Allow work contacts
  - [ ] Allow work applications notifications
  - [ ] Turn off 'Share across devices'
  - [ ] Turn off 'Focus status'
- [ ] Screen Time:
  - [ ] Turn off 'App & Website Activity'
- [ ] General - AirDrop & Handoff:
  - [ ] Turn 'AirDrop' to 'No One'
- [ ] General - Time Machine:
  - [ ] Set on 'When triggered manually'
- [ ] Appearance:
  - [ ] Set 'Appearance' on 'Dark'
  - [ ] Set 'Accent colour' on 'Pink'
  - [ ] Turn off 'Allow wallpaper tinting in windows'
  - [ ] Set 'Show scroll bars' on 'When scrolling'
  - [ ] Set 'Click in the scroll bar to' on 'Jump to the spot that's clicked'
- [ ] Accessibility:
  - [ ] Turn off 'Voice Over'
  - [ ] Display:
    - [ ] Turn on 'Reduce motion'
    - [ ] Turn on 'Reduce transparancy'
    - [ ] Set on 'Display contrast' a very little
- [ ] Control Centre:
  - [ ] Wi-Fi -> 'Show in Menu Bar'
  - [ ] Bluetooth -> 'Show in Menu Bar'
  - [ ] AirDrop -> 'Show in Menu Bar'
  - [ ] Focus -> 'Show in Menu Bar'
  - [ ] Stage Manager -> 'Don't show in Menu Bar'
  - [ ] Sreen Mirroring -> 'Show in Menu Bar'
  - [ ] Display -> 'Show in Menu Bar'
  - [ ] Sound -> 'Show in Menu Bar'
  - [ ] Now Playing -> 'Don't show in Menu Bar'
  - [ ] Battery -> 'Don't show in Menu Bar' (AlDente will do this)
  - [ ] Keyboard Brightness -> 'Show in Menu Bar'
  - [ ] Clock Show Date -> 'Always'
  - [ ] Spotlight -> 'Don't show in Menu Bar'
  - [ ] Siri -> 'Don't show in Menu Bar'
  - [ ] Time Machine -> 'Show in Menu Bar'
  - [ ] Automatically hide and show the menu bar: 'Always'
  - [ ] Recent documents, applications and servers: 'None'
- [ ] Siri & Spotlight:
  - [ ] Ask Siri: 'Off'
- [ ] Privacy & Security:
  - [ ] Analytics & Improvements:
    - [ ] Share Mac Analytics -> 'Off'
    - [ ] Improve Siri & Dictation -> 'Off'
    - [ ] Share with app developers -> 'Off'
  - [ ] Allow applications downloaded from 'App Store and identified developers'
  - [ ] Allow accessories to connect: 'Ask for New Accessories'
  - [ ] FileVault -> 'On'
- ✅ Desktop & Dock:
  - ✅ Set Dock size on 30 %
  - ✅ Turn off 'Magnification'
  - ✅ Automatically hide and show the Dock -> 'On'
  - ✅ Animate opening applications -> 'Off'
  - ✅ Stage Manager -> 'Off'
  - ✅ Show recent apps in Stage Manager -> 'Off'
  - ✅ Show Widges -> uncheck 'On Desktop', uncheck 'In Stage Manager'
  - ✅ Use iPhone widges -> 'Off'
  - ✅ Ask to keep changes when closing documents -> 'On'
  - ✅ Automatically rearrange Spaces based on most recent use -> 'Off'
  - ✅ Disable all 'Hot corners'
- [ ] Displays:
  - [ ] Turn off 'automatically adjust brightnes'
  - [ ] Turn off 'True Tone'
  - [ ] Set main display on 'more space'
  - [ ] Show resolutions as list -> 'On'
- [ ] Wallpaper:
  - [ ] Set desktop background color on '#191B1C'
- [ ] Lock Screen:
  - [ ] Start Screen Saver when inactive -> 'Never'
  - [ ] Turn display off on battery when inactive -> 'For 10 minutes'
  - [ ] Turn display off on power adapter when inactive -> 'For 10 minutes'
  - [ ] Require password after screen saver begins or display is turned off -> 'Immediately'
  - [ ] Show large clock -> 'Never'
  - [ ] Show username and photo -> 'Off'
  - [ ] Show password hints -> 'Off'
  - [ ] Show message when locked -> 'Off'
  - [ ] Login window shows -> check 'Name and password'
  - [ ] Show the Sleep, Restart and Shut Down buttons -> 'Off'
  - [ ] Accessibillity Options:
    - [ ] VoiceOver -> 'Off'
    - [ ] Zoom -> 'Off'
    - [ ] Accessibillity Keyboard -> 'Off'
    - [ ] Sticky Keys -> 'Off'
    - [ ] Slow Keys -> 'Off'
    - [ ] Mouse Keys -> 'Off'
- [ ] Touch ID & Password:
  - [ ] Use Touch ID to unlock your Mac -> 'Off'
  - [ ] Use Touch ID for fast user switching -> 'Off'
- [ ] Users & Groups:
  - [ ] Guest User -> 'Off'
- [ ] Passwords:
  - [ ] Use passwords and passkeys from Keychain -> 'Off'
  - [ ] Verification Codes:
    - [ ] Delete After Use -> 'On'
- [ ] Internet Accounts:
- [ ] Game Center:
  - [ ] Game Center -> 'Off'
- [ ] Wallet & Apple Pay:
  - [ ] Add Orders to Wallet -> 'Off'
- [ ] Keyboard:
  - [ ] Set keyboard languages on US and DE
- [ ] Mouse:
  - [ ] Tracking speed -> 100 %
  - [ ] Double-Click Speed -> 90 %
  - [ ] Scrolling Speed -> 100 %
  - [ ] Advanced: Pointer Accelleration -> 'On'
- [ ] Trackpad:
  - [ ] Tracking speed -> 100 %
  - [ ] Silent clicking -> 'On'
  - [ ] Tap to click -> 'On'


- [ ] turn of writing . if pressing two times space
- [ ] show hidden files by default

- [ ] Set up desktop switching short cuts

  
- [ ] Set dark mode to menu bar
- [ ] Auto hide menu bar
- [ ] Increase key responsiveness speed







- [ ] Remove default apps from dock
- [ ] Add needed apps to dock
 


 



- [ ] Notificate if a disk gets less then 10 GB free disk space
- [ ] Delete bin every 14 days automatically
 

- [ ] Safari
  - [ ] Set google as start page
  - [ ] is it possible to install extensions with scripts?
  - [ ] Show bookmarks bar




**have a look on Migration Assistant in Settings > General**
Maybe this works, if you didn't have erased the users partition before?!?


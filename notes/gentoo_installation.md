# gentoo installation notes

* setting related memos
 * network adapter name
   * enp0s3
 * virtualbox version used
   * 5.0.20-r

## gentoo packaging tools
* configuration file update
  * etc-update (requires su privilage)
  * dispatch-conf (never used it)
  * ctg-update (never used it)
* when config files need updating
  * sometimes when you try to merge stuff, you'll be asked by emerge to update config file:
    * ex: `xyz config files need updating`
      * do etc-update (with sudo)  

## X11 related
### setting up modifier keys 
* how to check keycodes & mouse events
  * xev - checks x events.
    * keycode 64 Alt_L

* how to check modifier key assign
  * xmodmap -pm
    * make file ~/.Xmodmap to modify keybinding via xmodmap.
      * run 'xmodmap ~/.Xmodmap to source.

* how to fix meta issues with xterm emacs (couldn't use alt as meta)
  * add following to ~/.Xdefaults
    * Xterm*eightBitInput: false
    * Xterm*eightBitOutput: true

## VirutalBox related
### Keyboard shortcuts
* R-alt + F : fullscreen on/off


## Display Resolutions
### how to define new display resolutions
1. run `cvt x_pixel y_pixel` (ex. `cvt 1920 1080`)
2. copy the output of cvt after Modeline "1920x1080_60.00" ~
3. run `xrandr --newmode (bunch of numbers after Modeline in 2)
   * ex: `xrandr --newmode "1368x768_60.00" 85.25 1368 1440 1576 1784 768 771 781 798 -hsync +vsync`
4. run `xrandr --addmode VBOX0 "1368x768_60.00"`
5. run `xrandr --output VBOX0 --mode "1368x768_60.00"`




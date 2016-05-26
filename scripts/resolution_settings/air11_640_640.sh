#! /bin/bash

xrandr --newmode "640x640_60.00" 32.50 640 664 728 816 640 543 653 665 -hsync +vsync
xrandr --addmode VGA-0 "640x640_60.00"
xrandr --output VGA-0 --mode "640x640_60.00"

#! /bin/bash

xrandr --newmode "1280x720" 74.50 1280 1344 1472 1664 720 723 728 748 -hsync +vsync
xrandr --addmode VGA-0 1280x720
xrandr --output VGA-0 --mode 1280x720

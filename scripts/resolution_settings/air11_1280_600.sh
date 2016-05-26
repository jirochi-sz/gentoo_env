#! /bin/bash
xrandr --newmode "1280x600_60.00" 61.00 1280 1328 1456 1632 600 603 613 624 -hsync +vsync
xrandr --addmode VGA-0 "1280x600_60.00"
xrandr --output VGA-0 --mode "1280x600_60.00"

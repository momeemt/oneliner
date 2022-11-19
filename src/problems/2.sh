#!/usr/bin/bash

# ls shellgei160/qdata/2/img/*.png | awk '{print $1, $1}' | sed 's/\.png/\.jpg/' | awk '{print $2, $1}' | convert

# ---- 解答例 ----
time ls shellgei160/qdata/2/img/*.png | sed 's/\.png$//' | xargs -P8 -I@ convert @.png @.jpg

time mogrify -format jpg shellgei160/qdata/2/img/*.png

time parallel 'convert {} {.}.jpg' ::: shellgei160/qdata/2/img/*.png
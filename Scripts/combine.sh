#! /bin/sh

# echo $1 $2 $3 $4
# gm montage $1 $2 $3 $4 -geometry +1+4 $1_stack.jpg
# gm montage $1 $2 $3 $4 -tile 1x  -shadow  -geometry +1+1  -background none  $1_tile.jpg

# Give each picture its white border 
convert $1 -bordercolor "#FFFFFF" -border 10x10 _$1
convert $2 -bordercolor "#FFFFFF" -border 10x10 _$2
convert $3 -bordercolor "#FFFFFF" -border 10x10 _$3
convert $4 -bordercolor "#FFFFFF" -border 10x10 _$4

# Combine all pictures to one long picture
convert _$1 _$2 _$3 _$4 -append temp.jpg 

# add an additional border
convert temp.jpg -bordercolor "#FFFFFF" -border 10x10  _$1
rm temp.jpg

# Set the appropriate rights because the pythonscript runs as root
sudo chgrp pi $1 $2 $3 $4 _$1
sudo chown pi $1 $2 $3 $4 _$1

# Move the pictures to their final place
mv $1 ./Pictures/
mv $2 ./Pictures/
mv $3 ./Pictures/
mv $4 ./Pictures/
mv _$1 /var/www/pics/
rm _$2 _$3 _$4 

qrencode -l H -o QR.png  http://192.168.4.1/pics/_$1
exit


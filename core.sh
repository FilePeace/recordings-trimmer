if [ "$1" = "to_implement" ];then
sudo apt install sox
# https://stackoverflow.com/a/8954707/5623661

# get the audio lenght
sox --info -d 
# https://stackoverflow.com/a/46493743/5623661

# get the audio timestamp
ls -la --time-style=full-iso Gravando_100.wav
# https://github.com/octacian/timecalc/releases/download/v1.0.0/timecalc-linux
# from audio timestamp minus its lenght, calc the time it started
./timecalc 14:50:40.00 - 00:15:11.70
# https://github.com/octacian/timecalc/issues/1
fi

# trim Gravando_102.wav 3:09:20 3:10:03
if [ "$1" = "trim" ];then
   if [ "$2" != "" ];then
         if [ "$3" != "" ];then
            if [ "$4" != "" ];then
               uselenght="$(./timecalc $4 - $3)"
               ffmpeg -ss $3 -i $2 -to $uselenght -c copy ${2}_trimmed_$(echo "$3" | tr ':' '_')-$(echo "$4" | tr ':' '_').wav
# https://stackoverflow.com/a/58253068/5623661, https://stackoverflow.com/a/46509213/5623661
# output file: Gravando_102_trimmed_3_09_20-3_10_03.wav (remove file extension, include timestamp)
            fi
         fi
   fi
fi

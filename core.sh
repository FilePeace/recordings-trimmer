if [ "$1" = "to_implement" ];then
sudo apt install sox
# https://stackoverflow.com/a/8954707/5623661
sox --info -d 
# https://stackoverflow.com/a/46493743/5623661
# -
# https://github.com/octacian/timecalc/releases/download/v1.0.0/timecalc-linux
ls -la --time-style=full-iso Gravando_100.wav
./timecalc 14:50:40.00 - 00:15:11.70
# https://github.com/octacian/timecalc/issues/1
fi


if [ "$1" = "trim" ];then
   if [ "$2" != "" ];then
         if [ "$3" != "" ];then
            if [ "$4" != "" ];then
               ffmpeg -ss $3 -i $2 -to 00:00:43 -c copy $2_trimmed_.wav
# https://stackoverflow.com/a/58253068/5623661, https://stackoverflow.com/a/46509213/5623661
            fi
         fi
   fi
fi

trim Gravando_102.wav 3:09:20 00:00:43
echo "3:09:20" | tr ':' '-'
# | tr -d ":"

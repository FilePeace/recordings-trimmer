sudo apt install sox
# https://stackoverflow.com/a/8954707/5623661
sox --info -d 
# https://stackoverflow.com/a/46493743/5623661
# -
# https://github.com/octacian/timecalc/releases/download/v1.0.0/timecalc-linux
ls -la --time-style=full-iso Gravando_100.wav
./timecalc 14:50:40.00 - 00:15:11.70
# https://github.com/octacian/timecalc/issues/1

# 3:09:20 to 3:10:03
#ffmpeg -ss 3:09:20 -i Gravando_102.wav -c copy -t 3:10:03 Gravando_102_trimmed.wav
ffmpeg -ss 3:09:20 -i 'Gravando_102.wav' -to 00:00:43 -c copy Gravando_102_trimmed.wav
# https://stackoverflow.com/questions/46508055/using-ffmpeg-to-cut-audio-from-to-position
# https://stackoverflow.com/a/58253068/5623661, https://stackoverflow.com/a/46509213/5623661

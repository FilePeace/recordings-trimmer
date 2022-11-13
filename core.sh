sudo apt install sox
# https://stackoverflow.com/a/8954707/5623661
sox --info -d 
# https://stackoverflow.com/a/46493743/5623661
# -
# https://github.com/octacian/timecalc/releases/download/v1.0.0/timecalc-linux
ls -la --time-style=full-iso Gravando_100.wav
./timecalc 14:50:40.00 - 00:15:11.70
# https://github.com/octacian/timecalc/issues/1

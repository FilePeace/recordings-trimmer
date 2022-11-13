tempdir="$(mktemp -d)"
mkfifo  "${tempdir}"/input
touch "${tempdir}"/output.log
./timecalc <"${tempdir}"/input >"${tempdir}"/output.log 2>&1 &
installerpid=$!
tail --pid=$installerpid -fn 1 "${tempdir}"/output.log | ( fgrep -q ">>> "; printf "14:50:40.00 - 00:15:11.70\n" ) >> "${tempdir}"/input &

# ... do stuff


# before ending the script, just wait that all background processes stop
wait
rm -f "${tempdir}"/input "${tempdir}"/output.log

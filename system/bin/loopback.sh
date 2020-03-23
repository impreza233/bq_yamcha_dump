#! /system/bin/sh
echo "loopback test"
spk=1
rec=2
mic1=3
mic2=4
enable=1
disable=0
open="-Y"
close="-N"
pname="tinyhostless"

if test $2 -eq $enable
then
	loopbacktest_nappa $open "$1"
	setprop persist.sys.tinyhostless 1
elif test $2 -eq $disable
then
	loopbacktest_nappa $close "$1"
	setprop persist.sys.tinyhostless 0
	setprop persist.sys.loopback-spk 2
	setprop persist.sys.loopback-rec 2
	setprop persist.sys.loopback-mic1 2
	setprop persist.sys.loopback-mic2 2
else
	echo "input error ctl cmd!"
fi

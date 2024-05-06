#!/usr/bin/bash
set -e

dirs=( temp tmp app data logs csv )
today= $( date +"%Y-%m-%d_%H-%M")

echo "Prepare to start"
first="no"

for d in $dirs; do
	if [ ! -d $d ]; then
		mkdir -pv $d
		first="yes"
	fi
done


if [ "$first" = "yes" ]; then
	mkdir -pv temp
	echo "prepare to start"
	python script.py >> ./logs/$today.log
else
	lastLog=$(cd logs && ls -t | head -n 1)
	echo "last log is $lastLog"
	cat $lastLog
	nohup ./start.sh & 2>/dev/null
fi

python script.py >> ./logs/$today.log


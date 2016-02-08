cpuCount=`more "/proc/cpuinfo" | grep 'cpu cores' | wc -l`

echo "There are $cpuCount installed CPU cores in the PC"

if [ $cpuCount -lt $1 ]
	then echo "Cannot perform task, more CPU cores required"
fi
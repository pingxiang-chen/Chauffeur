
#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source $DIR/../../envs.sh
[ -f $EXTENDED_KALMAN_FILTER_TIMING_LOGS ] && > $EXTENDED_KALMAN_FILTER_TIMING_LOGS

cd $EXTENDED_KALMAN_FILTER_RUNNING_SCRIPT_FOLDER

while [ 1 ]
do
	time ./run.sh 
done 2>> $EXTENDED_KALMAN_FILTER_TIMING_LOGS

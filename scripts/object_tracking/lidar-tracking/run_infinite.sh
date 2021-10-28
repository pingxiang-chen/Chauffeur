
#source /home/donny/.bashrc
#source /home/nvidia/Workspace/Chauffeur/applications/object_detection/lidar-tracking/build/devel/setup.bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $DIR/../../../applications/object_tracking/lidar-tracking;
source $DIR/../../envs.sh
source devel/setup.bash

[ -f $LIDAR_TRACKING_OUTPUT_LOGS ] && > $LIDAR_TRACKING_OUTPUT_LOGS

echo "in lidar" >> $LIDAR_TRACKING_OUTPUT_LOGS

while [ 1 ]
do
    echo "lidar doing" >> $LIDAR_TRACKING_OUTPUT_LOGS
    devel/lib/multi_object_tracking_lidar/kf_tracker >> $LIDAR_TRACKING_OUTPUT_LOGS 2>> $LIDAR_TRACKING_OUTPUT_LOGS
done

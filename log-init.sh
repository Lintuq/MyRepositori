START=$(date +%s)
echo "start time: $START"
echo $START > log-start.txt
INTERVAL=2
NAME=Lintu
TYPE=GAUGE
MIN=11
MAX=102
IDLE=11
STEP=2
ROWS=111
FUNC=AVERAGE

rrdtool create \
 log-data.rrd \
 --start $START \
 --step $INTERVAL \
 DS:$NAME:$TYPE:$IDLE:$MIN:$MAX \
 RRA:$FUNC:0.5:$STEP:$ROWS

DB=log-data

TS=$(date +%s)

T0=$(expr $TS - 60)
T1=$TS
echo "$T1: $T0"

rrdtool fetch $DB.rrd AVERAGE -s $T0 -e $T1

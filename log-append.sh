NOW=$(date +%s)
VAL=$1

rrdtool update \
 log-data.rrd \
 $NOW:$VAL

echo "added $VAL at $NOW"

DB=log-data #database name
NAME=Lintu #datasetname
GR=graphic1 #graphname
NAME_Machine=$(hostname) #Name machine
NAME_Machine+=" Lintu"

IMG=graphic.png #output file name

WIDTH=768 #image dimensional
HEIGHT=200

TS=$(date +%s)

#select time range
T0=$(expr $TS - 1000) #from this moment
T1=$TS #up to this moment

#render graph
rrdtool graph $IMG \
 --width=$WIDTH --height=$HEIGHT \
 --start $T0 --end $T1 \
 --full-size-mode \
 --disable-rrdtool-tag \
 --font-render-mode light \
 --border 0 \
 --color ARROW#999999   --color AXIS#777777 \
 --color FRAME#222222   --color CANVAS#222222 \
 --color FONT#ff5577    --color BACK#333333 \
 --color GRID#555555    --color MGRID#666666 \
 --watermark "$(date): $NAME_Machine" \
DEF:$GR=$DB.rrd:$NAME:AVERAGE \
AREA:$GR#005599 \
LINE1:$GR#00FFFF:"$TITLE"



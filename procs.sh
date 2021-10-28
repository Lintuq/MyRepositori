
HOST=192.168.60.231

NUM=$(snmpwalk -v 2c -c public $HOST iso.3.6.1.2.1.25.4.2.1.2 | grep postgres | wc -l)
echo "procs: $NUM"

RED='\033[1;31m' # red color
BLUE='\033[1;35m' # blue color
NOCOLOR='\033[0m' # default color

if [ $NUM -lt 1 ] # compare numbers ls is(<)
then
     echo -e "postgres is ${RED}stopped${NOCOLOR}"
else 
     echo -e "postgres is ${BLUE}running${NOCOLOR}"
fi

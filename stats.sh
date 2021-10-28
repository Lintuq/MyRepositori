HOST=192.168.60.231

OID=1.3.6.1.4.1.2021.4.11.0 #free memory

#target host

VAL=$(snmpget -v 2c -Ovq -c public $HOST $OID)
echo "free memory: ${VAL} KB"

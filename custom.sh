HOST=192.168.60.235

#customoid test

OID=1.3.6.1.4.1.8072.1.3.2.3.1.1.4.116.101.115.116

#query snmp agent on target host for oid value
VAL=$(snmpget -v 2c -Ovq -c public $HOST $OID)
echo "result: ${VAL}"

#---------------------------------------------------------
#custom oid "now"
OID1=1.3.6.1.4.1.8072.1.3.2.3.1.1.3.110.111.119

#query snmp agent on target host for  oid value
VAL1=$(snmpget -v 2c -Ovq -c public $HOST $OID1)
echo "now: ${VAL1}"

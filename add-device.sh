#!/bin/bash
$DEVICECLASS="/Server/SSH/Linux"
$PROTO="http"
$HOST=""
$USER=""
$PASS=""
##############################################################

$MAC=`GET http://169.254.169.254/latest/meta-data/network/interfaces/macs`
$PRIVATEIP=`GET http://169.254.169.254/latest/meta-data/network/interfaces/macs/${MAC}/local-ipv4s/
curl --insecure -u "${USER}:${PASS}" -X POST -H "Content-Type: application/json" -d \'{"action":"DeviceRouter","method":"addDevice","data":[{"deviceName":"${HOSTNAME}","deviceClass":"${DEVICECLASS}"}],"tid":1}\' ${PROTO}://${HOST}/zport/dmd/device_router'
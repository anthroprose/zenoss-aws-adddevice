#!/bin/bash
$DEVICECLASS = "/Server/SSH/Linux"
$PROTO = "https"
$HOST = ""
$USER = ""
$PASS = ""
curl --insecure -u "${USER}:${PASS}" -X POST -H "Content-Type: application/json" -d \'{"action":"DeviceRouter","method":"addDevice","data":[{"deviceName":"${HOSTNAME}","deviceClass":"${DEVICECLASS}"}],"tid":1}\' ${PROTO}://${HOST}/zport/dmd/device_router'
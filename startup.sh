#!/bin/sh

export PATH=/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin

echo ${Zerotier_Network_ID}
echo ${Socat_Dest_IP}
echo ${Socat_Dest_Port}

#printenv

if [ ! -e /dev/net/tun ]; then
        echo 'FATAL: cannot start ZeroTier One in container: /dev/net/tun not present.'
        exit 1
fi

/zerotier-one & export APP_PID=$!
sleep 5
/zerotier-cli join ${Zerotier_Network_ID}
#wait $APP_PID
socat TCP-LISTEN:${Socat_Dest_Port},fork,reuseaddr TCP:${Socat_Dest_IP}:${Socat_Dest_Port}

exec "$@"

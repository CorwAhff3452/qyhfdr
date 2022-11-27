#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2ca6ee8b-7842-4228-a446-158a9720b74b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


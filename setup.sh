COIN_NAME='TTC'
COIN_DAEMON='gttc'
COIN_PATH='/usr/local/bin/'

function configure_systemd() {
  cat << EOF > /etc/systemd/system/$COIN_NAME.service
[Unit]
Description=$COIN_NAME service
After=network.target
[Service]
User=root
Group=root
Type=forking
ExecStart=gttc --datadir /root/go/src/github.com/TTCECO/gttc/cmd/ethkey/mynode/ -unlock 't03D0212d13a04e2cAAf5a2A9A1E6225AaE8d367c4' --password /root/go/src/github.com/TTCECO/gttc/cmd/ethkey/pass.txt --mine
ExecStop=killall -HUP gttc
Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=10s
StartLimitInterval=120s
StartLimitBurst=5
[Install]
WantedBy=multi-user.target
EOF


systemctl daemon-reload
systemctl enable $COIN_NAME.service >/dev/null 2>&1
systemctl start $COIN_NAME.service
sleep 8
}

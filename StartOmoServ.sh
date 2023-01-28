#!/bin/bash
echo ce script va allumer tous les entités necessaire au fonctionnement de OSMOCOMBB
echo fait par @ZANDAZ 
sleep 3
gnome-terminal -e "bash -c \"osmo-hlr -c /usr/local/etc/osmocom/osmo-hlr.cfg ; exec bash\""
sleep 3
gnome-terminal -e  "bash -c \"osmo-stp -c /usr/local/etc/osmocom/osmo-stp.cfg ; exec bash\""
sleep 3
gnome-terminal -e  "bash -c \"osmo-msc -c /usr/local/etc/osmocom/osmo-msc.cfg -M /tmp/msc_mncc; exec bash\""
sleep 3
gnome-terminal -e  "bash -c \"osmo-bsc -c /usr/local/etc/osmocom/osmo-bsc.cfg ; exec bash\""
sleep 3
gnome-terminal -e  "bash -c \"python3 /home/alioune/osmo/src/osmocom-bb/src/target/trx_toolkit/fake_trx.py; exec bash\""
sleep 3
gnome-terminal -e "bash -c \"osmo-mgw -c /usr/local/etc/osmocom/osmo-mgw.cfg; exec bash\""
sleep 3
gnome-terminal -e "bash -c \"osmo-bts-trx -c /usr/local/etc/osmocom/osmo-bts-virtual.cfg; exec bash\""
sleep 3
gnome-terminal -e  "bash -c \"/home/alioune/osmo/src/osmocom-bb/src/host/trxcon/src/./trxcon; exec bash\""
sleep 3
gnome-terminal -e  "bash -c \"/home/alioune/osmo/src/osmocom-bb/src/host/layer23/src/mobile/mobile; exec bash\""
sleep 3
gnome-terminal -e  "bash -c \"osmo-sip-connector -c /usr/local/etc/osmocom/osmo-sip-connector.cfg; exec bash\""
sleep 3
gnome-terminal -e "bash -c \"echo nous allons demarrer le mobile maintenant ;telnet 127.0.0.1 4247; exec bash\""

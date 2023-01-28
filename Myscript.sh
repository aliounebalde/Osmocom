#!/bin/bash

osmo_src=$HOME/osmo/src
mkdir -p $osmo_src
cd $osmo_src
git clone git://git.osmocom.org/libosmocore
cd libosmocore
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/libosmo-abis
cd libosmo-abis
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/libosmo-netif
cd libosmo-netif
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/libosmo-sccp
cd libosmo-sccp
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/libsmpp34
cd libsmpp34
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/osmo-mgw
cd osmo-mgw
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/libasn1c
cd libasn1c
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/osmo-iuh
cd osmo-iuh
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
export PKG_CONFIG_PATH=/usr/local/lib/pkg-config
git clone git://git.osmocom.org/osmo-hlr
cd osmo-hlr
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/osmo-msc
cd osmo-msc
autoreconf -fi
./configure --enable-iu
make -j5
make check
make install
ldconfig
cd ..
sudo apt install libmnl-dev
git clone git://git.osmocom.org/libgtpnl.git
cd libgtpnl
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/osmo-ggsn
cd osmo-ggsn
autoreconf -fi
./configure --enable-gtp-linux
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/osmo-sgsn
cd osmo-sgsn
autoreconf -fi
./configure --enable-iu
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/osmo-sip-connector
cd osmo-sip-connector
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/osmo-bsc
cd osmo-bsc
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/osmo-trx
cd osmo-trx
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd ..
git clone git://git.osmocom.org/osmo-bts
cd osmo-bts
autoreconf -fi
./configure
make -j5
make check
make install
ldconfig
cd
export LD_LIBRARY_PATH="/usr/local/lib"
export PATH="$PATH:/usr/local/bin"
cd $osmo_src
git clone git://git.osmocom.org/osmocom-bb.git
cd osmocom-bb/src/
make nofirmware
make trxcon
cd host/trxcon
./configure
make

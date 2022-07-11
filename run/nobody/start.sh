#!/usr/bin/dumb-init /bin/bash

config_filepath='/config/syncthing/config/config.xml'

if [ -f "${config_filepath}" ]; then
	# disable syncthing auto upgrade
	sed -i -e 's~<autoUpgradeIntervalH>.*</autoUpgradeIntervalH>~<autoUpgradeIntervalH>0</autoUpgradeIntervalH>~g' "${config_filepath}"
fi

# run syncthing
/usr/bin/syncthing -config="/config/syncthing/config" -data="/config/syncthing/data" -gui-address="http://0.0.0.0:8384"
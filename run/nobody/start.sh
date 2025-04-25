#!/usr/bin/dumb-init /bin/bash

syncthing_config_path='/config/syncthing/config'
syncthing_data_path='/config/syncthing/data'
config_filepath='/config/syncthing/config/config.xml'

mkdir -p "${syncthing_config_path}" "${syncthing_data_path}"

if [ -f "${config_filepath}" ]; then
	# disable syncthing auto upgrade
	sed -i -e 's~<autoUpgradeIntervalH>.*</autoUpgradeIntervalH>~<autoUpgradeIntervalH>0</autoUpgradeIntervalH>~g' "${config_filepath}"
fi

# run syncthing
/usr/bin/syncthing -config="${syncthing_config_path}" -data="${syncthing_data_path}" -gui-address="http://0.0.0.0:8384"
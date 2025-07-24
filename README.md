# Application

[Syncthing](https://syncthing.net/)

## Description

Syncthing is a continuous file synchronization program. It synchronizes files
between two or more computers in real time, safely protected from prying eyes.
Your data is your data alone and you deserve to choose where it is stored,
whether it is shared with some third party, and how it's transmitted over the
internet.

## Build notes

Latest GitHub stable release from Arch Linux AUR.

## Usage

```bash
docker run -d \
    -p 8384:8384 \
    -p 22000:22000 \
    --name=<container name> \
    -v <path for media files>:/media \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e HEALTHCHECK_COMMAND=<command> \
    -e HEALTHCHECK_ACTION=<action> \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    binhex/arch-syncthing
```

Please replace all user variables in the above command defined by <> with the
correct values.

## Access application

`http://<host ip>:8384`

## Example

```bash
docker run -d \
    -p 8384:8384 \
    -p 22000:22000 \
    --name=syncthing \
    -v /media:/media \
    -v /apps/docker/syncthing:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-syncthing
```

## Notes

User ID (PUID) and Group ID (PGID) can be found by issuing the following command
for the user you want to run the container as:-

```bash
id <username>
```

___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](https://forums.unraid.net/topic/103137-support-binhex-syncthing/)

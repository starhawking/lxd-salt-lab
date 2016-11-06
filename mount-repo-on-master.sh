#!/usr/bin/env bash
# Create a bind mount into a container
# without having to dig through man pages.

readonly container_name='salt-master01'
readonly device_name='srv-salt'
readonly container_mountpoint='/srv/salt'
readonly container_mountpoint_source="${HOME}/lxd-salt-lab/Salt"

lxc config device add \
    ${container_name} \
    ${device_name} \
    disk \
    path=${container_mountpoint} \
    source=${container_mountpoint_source}


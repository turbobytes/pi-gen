#!/bin/bash -e

on_chroot sh -e - <<EOF
curl -o /tmp/tb-pulse.deb https://s3.amazonaws.com/tb-minion/tb-pulse.deb
dpkg -i /tmp/tb-pulse.deb 
service tb-pulse stop
EOF


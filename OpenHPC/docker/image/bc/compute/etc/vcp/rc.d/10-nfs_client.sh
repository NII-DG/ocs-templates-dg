#!/bin/bash

setup_fstab() {
  cat >> /etc/fstab <<EOF
${MASTER_HOSTNAME}:/ohpc/pub /opt/ohpc/pub nfs nfsvers=4,ro,nodev  0 0
${MASTER_HOSTNAME}:/home     /home         nfs nfsvers=4,rw,nodev  0 0
EOF
}

setup_fstab

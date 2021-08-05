#!/bin/bash

sudo dd if=/dev/zero of=/swapfile bs=1M count=2048

sudo mkswap /swapfile

sudo echo "/swapfile swap swap defaults 0 0" >> /etc/fstab

sudo echo "vm.swappiness=10" > /etc/sysctl.d/99-swap.conf

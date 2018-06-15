#!/bin/sh

# Configure tinc host
/root/scripts/configure.sh

# Runs tinc daemon
/usr/sbin/tinc start -D
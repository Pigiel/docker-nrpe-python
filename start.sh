#!/bin/sh
# NRPE server environment preparation script
. /lib/lsb/init-functions
. /etc/default/nagios-nrpe-server

mkdir /var/run/nagios
chown nagios /var/run/nagios

# Start NRPE server
/usr/sbin/nrpe -c /etc/nrpe.cfg -f
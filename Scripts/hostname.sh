#!/bin/sh
# Filename:     /etc/dhcp/dhclient-exit-hooks.d/hostname
# Purpose:      Used by dhclient-script to set the hostname of the system
#               to match the DNS information for the host as provided by
#               DHCP.
#


# Do not update hostname for virtual machine IP assignments
if [ "$interface" != "eth0" ] && [ "$interface" != "wlan0" ]
then
    return
fi


if [ "$reason" != BOUND ] && [ "$reason" != RENEW ] \
   && [ "$reason" != REBIND ] && [ "$reason" != REBOOT ]
then
        return
fi

echo dhclient-exit-hooks.d/hostname: Dynamic IP address = $new_ip_address
hostname=$(host $new_ip_address | cut -d ' ' -f 5 | sed 's/\.$//')
echo $hostname > /etc/hostname
hostname $hostname
echo dhclient-exit-hooks.d/hostname: Dynamic Hostname = $hostname

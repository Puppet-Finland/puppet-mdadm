# mdadm

A Puppet module for configuring Linux software RAID monitoring with mdadm. Has 
optional monit support.

# Module usage

Usage is this simple:

    include ::mdadm

For details see [init.pp](manifests/init.pp)

# TODO

Add -t flag to /etc/default/mdadm so that mdadm sends informational emails 
whenever it starts. This helps avoid situations where faulty arrays remain 
unnoticed due to email delivery issues.

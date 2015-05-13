# mdadm

A Puppet module for managing mdadm

# Module usage

* [Class: mdadm](manifests/init.pp)

# Dependencies

See [metadata.json](metadata.json).

# Operating system support

This module has been tested on

* Ubuntu 14.04

Any *NIX-style operating system should work out of the box or with small
modifications.

For details see [params.pp](manifests/params.pp).

# TODO

Add -t flag to /etc/default/mdadm so that mdadm sends informational emails 
whenever it starts. This helps avoid situations where faulty arrays remain 
unnoticed due to email delivery issues.

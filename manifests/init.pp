# == Class: mdadm
#
# This class install and configures the mdadm daemon
#
# Currently only Debian and Ubuntu are supported. Data for adding support for 
# RedHat 6 and 7 can be gathered from here:
#
# <https://github.com/jhoblitt/puppet-mdadm>
#
# That particular module is distributed under the permissive Apache 2.0 license.
#
# == Parameters
#
# [*monitor_email*]
#   Server monitoring email. Defaults to $::servermonitor.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class mdadm
(
    $monitor_email=$::servermonitor

) inherits mdadm::params
{

# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_mdadm', 'true') != 'false' {

    include mdadm::install

    class { 'mdadm::config':
        email => $monitor_email,
    }

    include mdadm::service

    if tagged('monit') {
        class { 'mdadm::monit':
            monitor_email => $monitor_email,
        }
    }
}
}

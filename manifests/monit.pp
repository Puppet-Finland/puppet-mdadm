#
# == Class: mdadm::monit
#
# Sets up monit rules for mdadm
#
class mdadm::monit
(
    $monitor_email

) inherits mdadm::params
{
    monit::fragment { 'mdadm-mdadm.monit':
        basename   => 'mdadm',
        modulename => 'mdadm',
    }
}

#
# == Class: mdadm::monit
#
# Sets up monit rules for mdadm
#
class mdadm::monit
(
    String $monitor_email

) inherits mdadm::params
{
    monit::fragment { 'mdadm-mdadm.monit':
        basename   => 'mdadm',
        modulename => 'mdadm',
    }
}

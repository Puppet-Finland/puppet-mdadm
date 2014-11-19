#
# Class: mdadm::config
#
# Configure mdadm. Currently limited to setting the monitoring email address in 
# the config file.
#
class mdadm::config
(
    $email

) inherits mdadm::params
{
    augeas { 'mdadm-mailaddr':
        context => '/files/etc/mdadm/mdadm.conf',
        changes => "set mailaddr/value ${email}'",
        lens => 'Mdadm_conf.lns',
        incl => '/etc/mdadm/mdadm.conf',
    }
}

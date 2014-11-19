# == Class: mdadm::service
#
# This class configures the mdadm service
#
class mdadm::service inherits mdadm::params {

    service { 'mdadm':
        name => "${::mdadm::params::service_name}",
        enable => true,
        require => Class['mdadm::install'],
    }
}

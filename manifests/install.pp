# == Class: mdadm::install
#
# This class installs the mdadm package, which allows monitoring RAID arrays 
# among other things.
#
class mdadm::install inherits mdadm::params {

    package { 'mdadm':
        ensure => installed,
        name   => $::mdadm::params::package_name,
    }
}

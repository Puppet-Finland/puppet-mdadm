#
# == Class: mdadm::params
#
# Defines some variables based on the operating system
#
class mdadm::params {

    case $::osfamily {
        'Debian': {
            $package_name = 'mdadm'
            $config_name = '/etc/mdadm/mdadm.conf'
            $service_name = 'mdadm'
            $pidfile = '/run/mdadm/monitor.pid'
            $service_start = "/usr/sbin/service $service_name start"
            $service_stop = "/usr/sbin/service $service_name stop"
        }
        default: {
            fail("Unsupported operating system: ${::osfamily}")
        }
    }
}

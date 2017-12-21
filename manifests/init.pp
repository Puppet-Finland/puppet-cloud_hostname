#
# == Class: cloud_hostname
#
# Configure FQDN and hostname and ensure that they persist across reboots
#
class cloud_hostname {

    include ::os::params

    file { '/etc/cloud/cloud.cfg.d/02_hostname.cfg':
        ensure  => 'present',
        content => template('cloud_hostname/02_hostname.cfg.erb'),
        owner   => $::os::params::adminuser,
        group   => $::os::params::admingroup,
        mode    => '0644',
    }
}

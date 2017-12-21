# puppet-cloud_hostname

A Puppet module for managing hostname for cloud-init. This is useful because on 
some Cloud instances (e.g. official CentOS 7 AMIs on Amazon EC2) traditional 
hostname changes to /etc/hostname do not persist across reboots.

# Usage

As long as $::fqdn and $::hostname facts resolve to correct values this is all 
you need to do:

    include ::cloud_hostname

# Dependencies

See [metadata.json](metadata.json).

# Operating system support

This module has been tested on

* CentOS 7 (Amazon EC2)

It should work on any system that has cloud-init installed.

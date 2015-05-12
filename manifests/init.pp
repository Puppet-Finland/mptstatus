#
# == Class: mptstatus
#
# Install or uninstall mpt-status (RAID status monitor). Uninstalling mptstatus 
# is useful on virtualized Debian installations where it just keeps sending 
# useless notifications to root's email address.
#
# == Parameters
#
# [*manage*]
#   Manage mpt-status with Puppet. Valid values are 'yes' (default) and 'no'.
# [*ensure*]
#   Status of the mpt-status package. Either 'present' or 'absent'. Defaults to 
#   'present'.
#
# == Examples
#
#   class { 'mptstatus':
#       ensure => 'absent',
#   }
#
# == Authors
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class mptstatus
(
    $manage = 'yes',
    $ensure = 'present'
)
{

if $manage == 'yes' {

    class { '::mptstatus::install':
        ensure => $ensure,
    }
}
}

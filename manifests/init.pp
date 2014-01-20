#
# == Class: mptstatus
#
# Install or uninstall mpt-status (RAID status monitor). Uninstalling mptstatus 
# is useful on virtualized Debian installations where it just keeps sending 
# useless notifications to root's email address.
#
# == Parameters
#
# [*status*]
#   Status of the mpt-status package. Either 'present' or 'absent'. Defaults to 
#   'present'.
#
# == Examples
#
# class { 'mptstatus':
#   status => 'absent',
# }
#
# == Authors
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-lisence
# See file LICENSE for details
#
class mptstatus
(
    $status='present'
)
{

# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_mptstatus', 'true') != 'false' {

    class { 'mptstatus::install':
        status => $status,
    }
}
}

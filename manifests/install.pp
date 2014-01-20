#
# == Class: mptstatus::install
#
# Install or uninstall the mpt-status package
#
class mptstatus::install($status) {

    package { 'mptstatus-mpt-status':
        ensure => $status,
        name => 'mpt-status',
    }
}

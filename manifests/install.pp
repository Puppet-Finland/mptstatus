#
# == Class: mptstatus::install
#
# Install or uninstall the mpt-status package
#
class mptstatus::install
(
    $ensure
)
{
    package { 'mptstatus-mpt-status':
        ensure => $ensure,
        name   => 'mpt-status',
    }
}

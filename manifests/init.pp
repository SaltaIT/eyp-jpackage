# == Class: jpackage
#
# === jpackage documentation
#
class jpackage(
                            $manage_repo           = true,
                            $package_ensure        = 'installed',
                            $manage_service        = true,
                            $manage_docker_service = true,
                            $service_ensure        = 'running',
                            $service_enable        = true,
                            $version               = '5.0',
                            $repo_gpgcheck         = true,
                            $repo_enabled          = true,
                          ) inherits jpackage::params{

  class { '::jpackage::install': } ->
  class { '::jpackage::config': } ~>
  class { '::jpackage::service': } ->
  Class['::jpackage']

}

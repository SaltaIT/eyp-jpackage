# == Class: jpackage
#
# === jpackage::install documentation
#
class jpackage::install inherits jpackage {

  if($jpackage::manage_package)
  {
    # package here, for example: 
    #package { $jpackage::params::package_name:
    #  ensure => $jpackage::package_ensure,
    #}
  }

}

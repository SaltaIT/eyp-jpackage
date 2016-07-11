# == Class: jpackage
#
# === jpackage::install documentation
#

# [jpackage-generic]
# name=JPackage generic
# baseurl=http://mirrors.dotsrc.org/pub/jpackage/5.0/generic/free/
# mirrorlist=http://www.jpackage.org/mirrorlist.php?dist=generic&type=free&release=5.0
# enabled=1
# gpgcheck=1
# gpgkey=http://www.jpackage.org/jpackage.asc

class jpackage::install inherits jpackage {

  if($jpackage::manage_repo)
  {
    yumrepo { 'jpackage-generic':
      descr      => 'JPackage generic',
      enabled    => bool2number($jpackage::repo_enabled),
      gpgcheck   => bool2number($jpackage::repo_gpgcheck),
      gpgkey     => 'http://www.jpackage.org/jpackage.asc',
      mirrorlist => "http://www.jpackage.org/mirrorlist.php?dist=generic&type=free&release=${jpackage::version}",
    }
  }

}

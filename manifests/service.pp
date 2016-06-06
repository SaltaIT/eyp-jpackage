class jpackage::service inherits jpackage {

  #
  validate_bool($jpackage::manage_docker_service)
  validate_bool($jpackage::manage_service)
  validate_bool($jpackage::service_enable)

  validate_re($jpackage::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${jpackage::service_ensure}")

  if(getvar('::eyp_docker_iscontainer')==undef or
      getvar('::eyp_docker_iscontainer')==false or
      getvar('::eyp_docker_iscontainer') =~ /false/ or
      $jpackage::manage_docker_service)
  {
    if($jpackage::manage_service)
    {
      #service or exec here
    }
  }
}

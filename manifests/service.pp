class jpackage::service inherits jpackage {

  #
  validate_bool($jpackage::manage_docker_service)
  validate_bool($jpackage::manage_service)
  validate_bool($jpackage::service_enable)

  validate_re($jpackage::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${jpackage::service_ensure}")

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $jpackage::manage_docker_service)
  {
    if($jpackage::manage_service)
    {
      #service or exec here
    }
  }
}

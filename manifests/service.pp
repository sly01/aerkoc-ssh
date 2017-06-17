class ssh::service(
	$service_name = $::ssh::params::service_name
) inherits ::ssh::params {

	service { "${service_name}":
		ensure => running,
		enable => true,
	}
}

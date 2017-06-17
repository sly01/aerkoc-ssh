class ssh::params {

	$permit_root_login = true

	case $::osfamily {
		'Redhat': {
		  $service_name = "sshd"
  	}
		'Debian': {
			$service_name = "ssh"
		}
		default: {
			notify { "This ssh module doesn't support ${::osfamily}": }
		}
	}
}

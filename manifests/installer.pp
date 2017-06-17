class ssh::installer {

  package { 'openssh-server':
		ensure => present,
	} 

}

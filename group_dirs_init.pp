file { '/home/managers/':
	ensure => 'directory',
	owner => 'root',
	group => 'managers',
	mode => '2770',
}

file { '/home/sales/':
	ensure => 'directory',
	owner => 'root',
	group => 'sales',
	mode => '2770',
}

file { '/home/accounting/':
	ensure => 'directory',
	owner => 'root',
	group => 'accounting',
	mode => '2770',
}


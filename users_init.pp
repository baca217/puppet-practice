file { '/etc/skel':
	ensure => present,
}

define macro-useradd ( $name, $uid, $password, $groups) {
	$username = $title
	
	file { "${username}_config":
		ensure => 'directory',
		recurse => remote,
		source => "/etc/skel/",
		path => "/home/$username",
		owner => "$uid",
		group => "$uid",
		mode => 0700,
	}

	user { "$username":
		password => "$password",
		uid => "$uid",
		gid => "$uid",
		shell => "/bin/bash",
		home => "/home/$username",
		#personal needs
		managehome => true,
		ensure => present,
		comment => "$name",
		groups => $groups,
		membership => minimum,
		require => File["${username}_config"],
	}
	
	group { "$username":
		gid => $uid,
		ensure => present
	}
}	



group { "managers":
	ensure => "present",
	gid => "2000",
}

group { "sales":
	ensure => "present",
	gid => "2001",
}

group { "accounting":
	ensure => "present",
	gid => "2002",
}

class user-ebacahol{
	macro-useradd{"ebacahol":
		name =>"Elmer Baca Holguin",
		uid =>"1000",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => ["wheel","managers","sales","accounting"],
	}
}

class user-mscott{
	macro-useradd{"mscott":
		name =>"Micheal Scott",
		uid =>"1001",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => ["managers"],
	}
}

class user-dschrute{
	macro-useradd{"dschrute":
		name =>"Dwight Schrute",
		uid =>"1002",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => ["managers"],
	}
}

class user-jhalpert{
	macro-useradd{"jhalpert":
		name =>"Jim Halpert",
		uid =>"1003",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => ["managers"],
	}
}

class user-pbeesly{
	macro-useradd{"pbeesly":
		name =>"Pam Beesly",
		uid =>"1004",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => [],
	}
}

class user-abernard{
	macro-useradd{"abernard":
		name =>"Andy Bernard",
		uid =>"1005",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => ["sales"],
	}
}

class user-amartin{
	macro-useradd{"amartin":
		name =>"Angela Martin",
		uid =>"1006",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => ["accounting"],
	}
}

class user-kkapoor{
	macro-useradd{"kkapoor":
		name =>"Kelly Kapoor",
		uid =>"1007",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => [],
	}
}

class user-omartinez{
	macro-useradd{"omartinez":
		name =>"Oscar Martinez",
		uid =>"1008",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => ["accounting"],
	}
}

class user-dphilbin{
	macro-useradd{"dphilbin":
		name =>"Darryl Philbin",
		uid =>"1009",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => [],
	}
}

class user-tflenderson{
	macro-useradd{"tflenderson":
		name =>"Toby Flenderson",
		uid =>"1010",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => [],
	}
}

class user-kmalone{
	macro-useradd{"kmalone":
		name =>"Kevin Malone",
		uid =>"1011",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => ["accounting"],
	}
}

class user-plapin{
	macro-useradd{"plapin":
		name =>"Phyllis Lapin",
		uid =>"1012",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => ["sales"],
	}
}

class user-shudson{
	macro-useradd{"shudson":
		name =>"Stanley Hudson",
		uid =>"1013",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => ["sales"],
	}
}

class user-mpalmer{
	macro-useradd{"mpalmer":
		name =>"Meredith Palmer",
		uid =>"1014",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => [],
	}
}

class user-cbratton{
	macro-useradd{"cbratton":
		name =>"Creed Bratton",
		uid =>"1015",
		 password => '$6$03ku2XkH$hxRQuzgUVbGiuKhpgP0kiVZI8MB.oys2EYznWsGEeOU036TuP8FEVqBfG/5nSZzp78YSKAq3kiH6lOIz.ekI1.',
		groups => [],
	}
}


node "localhost"{
	include user-ebacahol
	include user-mscott
	include user-dschrute
	include user-jhalpert
	include user-pbeesly
	include user-abernard
	include user-amartin
	include user-kkapoor
	include user-omartinez
	include user-dphilbin
	include user-tflenderson
	include user-kmalone
	include user-plapin
	include user-shudson
	include user-mpalmer
	include user-cbratton
}


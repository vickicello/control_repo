class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQBW/bR01ZACHFh3HBWdMeATNwiZyli/O+H2+dMBjOL1FiYBHqkgPcGjUAMOjbysVtOFsgslT0z1PxaTNVmxoO903x9Gd9IMo/h2NC8T+lbw1IrkWiQVBgkv0H3wGIeT0ZRT4yZdjgHAyZY+fuMKSqK4Oo9/apbnJeXpbvUICv20PzSz4oEZdOfSkEUMhXtI5Y+HecwnWrotK0atgquyd/wiKfzUKtFdrx5+/UhMbsalf9SgUwEoUoRFNJa+jMs5rRz21Oza29Y7DfCaGR1E62bYStGIWLU4m2AR/AyRydXhbtPD3axx3sP7IVvJ0hMJ23dH2sEqXTrfvCApnoe7LR',
  }
}

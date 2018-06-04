class profile::ssh_server {
  package {'openssh-server':
      ensure => present,
  }
  service {'sshd':
      ensure => 'running',
      enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
      ensure => present,
      user   => 'root',
      type   => 'ssh-rsa',
      key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDJr32fAzas69pmlRJ+/v23jnC3iu8CXbv6+wUbeaPJRH3n2F9vipdM/X9iuOXzglvT+TSJhgyakXYbST2726sBsIUQJBkKJcorJ2V+WlpNJiI3vwW7KVxes/YKk7qgWi0o8vQdLfjdWjw3feaOU4jrRr1UNxND3Parvt/VONpKaUVmL+/Q0rF3qjhkuZ7GCxYzRlnGtka1MFVvTdDnYFwc7vWrT0P1DSIAVqzvnWBO+PiAz1Xp2tGO1wf2oDzXqDlPnYNuty1BaPg7HYOEe0qi3O48ZZ187JMofMoooCYEVVWFFSQi4aUaXFhSARWUZdULksKJG2QaEcly2tuVTsNT',
  }
}
   

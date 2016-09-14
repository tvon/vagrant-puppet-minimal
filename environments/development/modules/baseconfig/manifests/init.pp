# == Class: baseconfig
#
# Performs basic setup
#
class baseconfig {

  # Resource Type: host - https://docs.puppet.com/puppet/latest/reference/types/host.html
  host { 'hostmachine':
    ip => '192.168.0.1';
  }

  # Resource Type: package - https://docs.puppet.com/puppet/4.6/reference/types/package.html
  package { ['vim-enhanced', 'git-all']:
    ensure => present;
  }

  # Resource Type: file - https://docs.puppet.com/puppet/4.6/reference/types/file.html
  file {
    '/home/vagrant/.bashrc':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0644',
      source => 'puppet:///modules/baseconfig/bashrc';
  }
}

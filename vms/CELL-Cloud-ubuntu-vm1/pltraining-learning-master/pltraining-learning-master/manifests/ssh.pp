class learning::ssh {

  augeas { "GSSAPI_enable":
    context => '/files/etc/ssh/sshd_config',
    changes => 'set GSSAPIAuthentication yes',
    require => Package['ruby_augeas_lib'],
  }

  augeas { "disable_key_checking":
    context => '/files/etc/ssh/ssh_config',
    changes =>
      ["set Host[.='*.puppet.vm'] *.puppet.vm",
       "set Host[.='*.puppet.vm']/StrictHostKeyChecking no",
       "set Host[.='*.puppet.vm']/UserKnownHostsFile /dev/null"],
    require => Package['ruby_augeas_lib'],
  }

  service { 'sshd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

}

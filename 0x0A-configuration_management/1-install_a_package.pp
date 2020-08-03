# Using Puppet, install puppet-lint. (Puppet manifest)

package { 'puppet-lint':
  ensure   => '2.1.1',
  provider => 'gem',
}

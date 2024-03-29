name	'jenkins'
maintainer       "AJ Christensen"
maintainer_email "aj@junglist.gen.nz"
license          "Apache 2.0"
description      "Installs and configures Jenkins CI server & slaves"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.6.3"

depends 'runit','~> 1.0.0'
%w(java iptables).each { |cb| depends cb }
%w(iptables yum apt).each { |cb| recommends cb }

# Class: yocto_users
#
# This module manages yocto_users
#
# Parameters: none
#
# Actions: it's a class, which utilizes torrancew-account
#
# Requires: see Modulefile
#
# Sample Usage: see below
#
# password creation: mkpasswd -m sha-512

class yocto_users (
  $ensure = present
) {
  account{
    'genius':
    ensure => 'present',
    password => '$6$wFcm.gmxtLzOG$tTJC6AfJNAX3lCHfgSVqfti59Ee.gxy24qIrf87FhnqQ9CpBlq/QbcEjwYjPrFuwJhL2uVfscEsBWCIq0VWlH.',
    groups => ['sudo'],
   }
}
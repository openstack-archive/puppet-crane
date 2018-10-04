# == Class: Crane
#
# Crane init
#
# === Parameters
# [*package_ensure*]
#   (Optional) Ensure state for package.
#   Defaults to 'present'.
class crane(
  $package_ensure                     = 'present',
){

  include ::crane::config

}

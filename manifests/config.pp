# == Class: crane::config
#
# Crane configuration
#
# === Parameters
# [*data_dir*]
#   (Required) Full path to the directory from which metadata files should be loaded. The app files may optionally be in the root data_dir, or in subdirectories as desired.
#   Defaults to /var/lib/crane/metadata/.
#
# [*debug*]
#   (Required) Controls whether debug logging is enabled or disable for crane.
#   Defaults to false.
#
# [*endpoint*]
#   (Required) hostname and optional port, in the form hostname:port, where crane is deployed. This is the value that will be returned for the X-Docker-Endpoint header. defaults to the host and port used by the requesting client.
#   Defaults to http://localhost:8787/.
#
# [*data_dir_polling_interval*]
#   (Required) The number of seconds between checks for updates to metadata files in the data_dir. This defaults to checking once every 10 seconds.
#   Defaults to 10.
#
# [*serve_content_enable*]
#   (Required) Put Crane into "serve content" mode when true. Defaults to false, i.e. Crane uses 302 redirects by default.
#   Defaults to true.
#
# [*serve_content_dir_v1*]
#   (Required) Full path to the directory from which images should be served for Docker clients using the 'v1' API.
#   Defaults to /var/lib/crane/data/.
#
# [*serve_content_dir_v2*]
#   (Required) Full path to the directory from which images should be served for Docker clients using the 'v1' API.
#   Defaults to /var/lib/crane/data/.
#
# [*serve_content_use_x_sendfile*]
#   (Required) Use Apache XSENDFILE to send the data.
#   Defaults to true.
#
# [*port*]
#   (Required) The port where Apache/Crane will listen.
#   Defaults to 8787.
#
# [*host*]
#   (Required) The host where Apache/Crane will listen.
#   Defaults to localhost.
#
class crane::config(
  $data_dir                           = '/var/lib/crane/metadata/',
  $debug                              = false,
  $endpoint                           = 'http://localhost:8787/',
  $data_dir_polling_interval          = '10',
  $serve_content_enable               = true,
  $serve_content_dir_v1               = '/var/lib/crane/data/',
  $serve_content_dir_v2               = '/var/lib/crane/data/',
  $serve_content_use_x_sendfile       = true,
  $host                               = 'localhost',
  $port                               = 8787,
){

  file { '/etc/crane.conf':
    content => template('crane/crane.conf.erb')
  }

  file { '/etc/httpd/conf.d/crane.conf':
    content => template('crane/crane-httpd.conf.erb')
  }

  file_line { '/etc/httpd/conf/httpd.conf:Listen':
    path    => '/etc/httpd/conf/httpd.conf',
    match   => '^Listen 80*',
    line    => "Listen $port",
  }

}

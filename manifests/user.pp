define s3sync::user ( $user, $aws_key_id, $aws_secret_key, $gpg_passphrase = undef, $path ) {
  file { "$user s3cfg":
    path     => "${path}/.s3cfg",
    mode     => '0700',
    owner    => $user,
    content  => template('s3sync/s3cmd-cfg.erb'),
  }
}

# fix our stack so that we get to 0 errors
exec { 'increase-ulimit':
  command  => 'bin/sed -i "s/ULIMIT=" -n 15/ULIMIT=" -n 4096/\' /etc/default/nginx', 

exec {restart-nginx':
	command => 'usr/sbin/service nginx restart'
}

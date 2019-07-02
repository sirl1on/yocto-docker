#!/bin/bash

user_id=$(stat -c '%u' .)
group_id=$(stat -c '%g' .)
if [ "$user_id" = "0" ]; then
	exec "$@"
else
	useradd -u $user_id -g $group_id -b /local_home -m docker_worker
	exec sudo "PATH=$PATH" -E -H -u docker_worker /bin/bash -c "$*"
fi

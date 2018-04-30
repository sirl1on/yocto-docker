#!/bin/bash

user_id=$(stat -c '%u' .)
group_id=$(stat -c '%g' .)

useradd -u $user_id -g $group_id -b /local_home -m local_worker
exec sudo -H -u local_worker /bin/bash -c "$*"

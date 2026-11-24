#!/bin/bash

if [ "$HOME" != "/nonexistent" ] && [ "$HOME" != "/" ] && [ "$HOME" != "/dev/null" ]
then
	cat <<EOF >&2
Warning: Insecure MariaDB home directory detected: ${HOME}. Please change
it to '/nonexistent' or '/dev/null' or '/' to ensure that code cannot be
run using ${HOME}/.bashrc or ${HOME}/.bash_profile if ever logging in as
the 'mysql' user, which should not be done in the first place.
To change the \$HOME directory use: usermod -d /nonexistent mysql  
More information can be found here:
https://www.cve.org/CVERecord?id=CVE-2026-107814
EOF
fi

#!/bin/sh

CONTROL_GROUPS="sp"
SUBS="blkio cpuacct memory pids freezer"

for cgroup in ${CONTROL_GROUPS}
do
	for sub in ${SUBS}
	do	
		mkdir /sys/fs/cgroup/$sub/$cgroup/
	done
done

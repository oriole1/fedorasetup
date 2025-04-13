#!/bin/bash
sudo dnf install policycoreutils-python-utils && sudo semanage fcontext -a -t bin_t "/opt/safing/portmaster/portmaster-start" && sudo restorecon -v /opt/safing/portmaster/portmaster-start && ls -Z /opt/safing/portmaster/portmaster-start 
#make sure to install portmaster first

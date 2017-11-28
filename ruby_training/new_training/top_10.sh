#!/bin/bash

#### Doing the awk on the file to find the IP address ####

awk '{print $1}' access_log-20161111 | sort -n | uniq -c | sort -nr | head -n2 

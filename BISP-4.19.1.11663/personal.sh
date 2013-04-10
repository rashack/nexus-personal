#!/bin/sh

# Personal launcher


PERSONAL_HOME=/usr/local/lib/personal

# You could set proxy settings to be used in 
# personal (which uses libcurl),  
# For example:
# export all_proxy=http://proxy.host.com:8080
# export no_proxy=intra1.host.com,intra2.host.com

exec /usr/local/lib/personal/personal.bin


#!/usr/bin/ruby
#
#
#
v1 = ARGV[0]
v2 = ARGV[1]


`timeout 5 nc -v -w2 $v1 $v2`

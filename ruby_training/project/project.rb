#!/usr/bin/ruby
#
#
#


App_root = File.dirname(__FILE__)

#puts App_root

#require "#{App_root}/lib/hi"

#require File.join(App_root, 'lib', 'hi.rb')
#require File.join(App_root, 'lib', 'hi')

$:.unshift(File.join(App_root, 'lib'))

require 'hi'










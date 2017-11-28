#!/usr/bin/ruby
#
#
#

print "enter the email addreess you want to validate :"

email = gets.chomp


if  email =~ /^\w+(_\.)?\w+@\w+\.(com|org|in|edu)$/

  #if   email == /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b/

    puts " thats a valid one"

 else

    puts " not a valid one"

end













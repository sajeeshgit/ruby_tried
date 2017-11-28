#!/usr/bin/ruby
#
#


def welcome 

  puts "Hello Welcome"

end 


def add

  puts "#{1 + 1}"

end 


def longest_word 

   names = ["sajeesh", "reshmi", "gopal", "saneesh", "anwitha", "anu", "suseela"]

  f =  names.inject do |memo,n|  memo.length > n.length ? memo : n
     
            end
puts f
return

end 


def over_five?
  
    value = 3

   puts value > 5? 'Over 5' : 'Below 5'

end


 

welcome 

add

longest_word

over_five?



              

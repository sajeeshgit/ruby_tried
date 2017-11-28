#!/usr/bin/ruby
#
#
#

def add(n1, n2)
   
   puts n1 + n2    
  
end 

def world(input)

   puts "Hello #{input}!"

end 

def longest_word

   word = ["super", "starcomeshome", "enjoy", "needy", "strength"]
         
   log  = word.inject do |memo, n|  memo.length > n.length ? memo : n 

        end

       puts log
       
       return

end


add(3, 4)
world("sajeesh")
longest_word









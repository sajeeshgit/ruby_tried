#!/usr/bin/ruby
#
#
#



a = ['sajeesh', 'sdsdnskdnskdnskssd', 'tendulkar', 'freindship', 'sasodjaskkasdlnaskldnasdk', 'koya']







longest = a.inject do |memo, tit|
 
                          if memo.length > tit.length 
                                
                                 memo
                             else
                                 tit
                          end
                    end

puts longest
#puts a.inspect.sort



h = a.sort {|x,y| y.length <=> x.length }

puts h.inspect


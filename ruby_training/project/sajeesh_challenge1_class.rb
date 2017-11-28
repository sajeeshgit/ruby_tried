#!/usr/bin/ruby
#
#
#

class String 

      def check
         
              print "Please enter your string:"
              
              string = gets.chomp.to_s
        
              special = "?<>',?[]}{=-)(*&^%$#`~{}"
              white_space = /^\s$/
              regex = /[#{special.gsub(/./){|char| "\\#{char}"}}]/

              if string =~ regex or string =~ /[0-9]/ or string =~ white_space

                    puts "Your string contains special charecters / numerals / white space, try something like \"india\" "
                    exit 0
              else

                    return string

              end
    
      end

end



hey = String.new
puts hey.check.length
puts hey.check.swapcase
puts hey.check.capitalize

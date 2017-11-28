#!/usr/bin/ruby
#
#
#

class FirstTest


      attr_accessor :sajeesh      
      attr_writer :sex
      attr_reader :age, :weight

       
      def name_reader
   
          @name 

       end

       def name_writer(catch)

          @name = catch 

       end

       def sex

          @sex
      
       end

       def age=(n1)

            @age = n1
            
       end

       def weight=(n2)
    
           @weight = n2

       end
end


hello = FirstTest.new

hello.name_writer("Sajeesh")
puts "Your Name is #{hello.name_reader}"

hello.sajeesh = "krishnan"
puts "Your second name is #{hello.sajeesh}"

puts "Your full name is #{hello.name_reader} #{hello.sajeesh}"

hello.sex = "Male"
puts "#{hello.name_reader} your Sex is #{hello.sex}"

hello.age = "29"
puts "#{hello.name_reader} your age is #{hello.age}"

hello.weight = "81"
puts "#{hello.name_reader} your Weight is #{hello.weight}" 

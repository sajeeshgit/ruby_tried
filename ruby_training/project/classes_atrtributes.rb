#!/usr/bin/ruby
#
#
#


class Animal

 attr_accessor :name
 attr_writer :color
 attr_reader :color

 def noise=(value)
     @noise = value
 end

 def noise
     @noise
 end

end


animal = Animal.new

animal.noise = "Moo!"
puts animal.noise 


animal.name = "Cow"
puts "The Animal is #{animal.name}"

animal.color = "White"
puts "The color of the Animal is #{animal.color}"







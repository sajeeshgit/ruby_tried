#!/usr/bin/ruby
#
#
#

require 'csv'

a = File.open('file2.txt', 'r')
b = File.open('file1.txt', 'r')


a = a.map {|i| i.chomp }
b = b.map {|i| i.chomp }


File.open('File3.txt', 'w') do |output_file|

a.each_with_index do |i, j|

output_file.puts "#{i} #{b[j]}"
end

end



hash = Hash.new(0)


a = File.open('File3.txt', 'r')


a = a.map {|i| i.chomp }

a.each do |i, j|

   hash[i] += 1
   hash[j] += 1

end

CSV.open("data.csv", "wb") { |csv| hash.to_a.each { |elem| csv << elem } }


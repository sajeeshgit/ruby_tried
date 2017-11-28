#!/Users/sajeesh/.rvm/rubies/ruby-2.3.3/bin/ruby



array = [1, 3, 4, 5, 2, 3, 1, 4, 6, 4, 5, 3, 6, 8, 7, 9, 6, 9, 8]



hash = Hash.new(0)

array.each do |e|

     hash[e] += 1

     end



hash.each { |k,v| puts k if v == hash.values.max }


puts array.inspect



d = array.find_all { |e| array.count(e) > 1 }.uniq

puts d

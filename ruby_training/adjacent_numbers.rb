#!/Users/sajeesh/.rvm/rubies/ruby-2.3.3/bin/ruby

a = ARGV[0]

b = a.split(',')

c = b.chunk_while { |a, b| a == b }

d = c.flat_map { |chunk| chunk.one? ? chunk.first : "#{chunk.first}:#{chunk.size}"}

p d.join(',')

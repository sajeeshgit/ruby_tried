#!/Users/sajeesh/.rvm/rubies/ruby-2.3.3/bin/ruby


a = [1, 1, 1, 2, 2, 3, 2, 3, 4, 4, 5]

c = a.chunk_while { |a,b| a == b }

p c.flat_map { |chunk| chunk.one? ? chunk.first : { chunk.first => chunk.size } }


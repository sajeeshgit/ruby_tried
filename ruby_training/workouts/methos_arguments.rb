#!/usr/bin/ruby
#
#
#
# This is to understand how a method works:




def welcome(name) 

    puts name

end


def add(a, b)

    puts a + b 

end


def longest_word(word) 

      #word = ["dadasds", "asdasdasdjkji", "asdfijfiajdsknwij", "asds", "awjdqiojdkdieodjadsnaksmdaosjdsk"]
              
      a = word.inject do |memo,i|
              
                     if memo.length > i.length 
                          memo
                        else
                           i
                      end
                   end
      return a
end

def over_five?

value = 4
   
   puts value > 5? 'over_five' : 'below_five'

end



welcome("Hello World")
welcome("Sajeesh")



add(1, 8)

wrd =  ["dadasds", "asdasdasdjkji", "asdfijfiajdsknwij", "asds", "awjdqiojdkdieodjadsnaksmdaosjdsk"]
longest_word(wrd).length

over_five?

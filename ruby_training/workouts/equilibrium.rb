



def equi(a)

  index = a.length - 1
  len   = a.length - 1

while index > 0

      left  = a[0..index-1].reduce(:+)
      right = a[index+1..len].reduce(:+)

     
 if left == right 


     return index 

  end

    index -= 1

 end 

 nil

end


sample_array = [-7, 1, 5, 2, -4, 3, 0]
expected = equi(sample_array)


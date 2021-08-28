# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1 , num_2)
   arr =[]
   arr2 =[]
 (1...num_1).each do |ele|
   if num_1 % ele == 0
      arr << ele
   end
 end
 (1...num_2).each do |ele|
   if num_2 % ele == 0
      arr2 << ele
   end
 end
 i=0 
 counter = 0
 while i < arr2.length 

      if arr.include?(arr2[i])
         counter += 1
      end
      if counter == 2
         return false
      end
 i += 1
end
   return true
end
#p coprime?(22, 21)
p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
#p coprime?(21, 27)
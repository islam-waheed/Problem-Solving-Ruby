# Write a method, adult_in_group?(people), that accepts an array containing people.
# The method should return true if there is at least 1 person with an age of 18 or greater.
# The method should return false otherwise.

def adult_in_group?(*people)
    x = people.flatten
    age = 18
    flag = 0
    x.each do |ele|
        ele.map do |k , v|
            if flag % 2 == 1 ##### i can't get the second value of hash so i had to make a diff sol.
                if v >= age
                    return true
                end
            end
            flag +=1
        end
        puts 
         
    end
    return false
    #return x
end

people_1 = [
    {name: "Jack", age: 17},
    {name: "Jill", age: 21},
    {name: "Alice", age: 15},
    {name: "Bob", age: 16}
]
p adult_in_group?(people_1)    # => true

people_2 = [
    {name: "Jane", age: 12},
    {name: "John", age: 13},
    {name: "Ashley", age: 17},
    {name: "Bill", age: 16}
]
p adult_in_group?(people_2)    # => false

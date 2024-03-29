# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

def peak_finder(arr)
    new_arr = []
    (0...arr.length-1).each do |ele|
       
        if arr.length == 2 
            if arr[0] < arr[1]
                new_arr << arr[1]  
            end
        end
        
        if ele == 0
            if arr[ele] > arr[ele+1]
                new_arr << arr[ele]
            end
            next
        end
            if ele == arr.length-2  
                if arr[ele] > arr[ele+1]
                    new_arr << arr[ele+1]
                end          
            end
            
            if ele == arr.length-2
                if arr[arr.length-2] < arr[arr.length-1]
                    new_arr << arr[arr.length-1]
                end
            end
        if arr[ele] > arr[ele + 1] && arr[ele] > arr[ele - 1]
            new_arr << arr[ele]
        end
    
    end
    new_arr
end

p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]
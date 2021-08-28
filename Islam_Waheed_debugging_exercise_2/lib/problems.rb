# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"

def largest_prime_factor(num)
    i = num
    # debugger
    while i >= 2 
        if num % i == 0 && is_prime(i) == true
                return i
        end
        i -= 1
    end
end

def is_prime(n)
    for d in 2..(n - 1)
     if (n % d) == 0
      return false
     end
    end
    true
end

def unique_chars?(str)
    hash = Hash.new(0)
    char = str.split("")
    char.map do |i|
         hash[i] += 1
    end
    hash.values.all? {|ele| ele == 1}
    # return hash
end

def dupe_indices(arr)
    hash =Hash.new([])
    new_arr = []
    # debugger
    arr.each.with_index do |ele,i|
        hash[ele] << i
    end
        # hash[ele] = i 
    return hash
end

 dupe_indices(["a", "b", "c", "c", "b"])


def ana_array(arr_1, arr_2)
    hash = Hash.new(0)
    hash2 = Hash.new(0)
    arr_1.each do |ele| 
        hash[ele] += 1
    end
    arr_2.each do |ele| 
        hash2[ele] += 1
    end
    if hash == hash2
        return true
        else
            return false
    end

end

p ana_array(["i","c","e","m","a","n"], ["c","i","n","e","m","a"])
p ana_array(["cat", "dog", "cat"], ["dog", "cat", "cat"])
p ana_array(["cat", "dog", "cat"], ["dog", "cat", "mouse"])
p ana_array(["cat"], ["cat", "dog"])
p ana_array(["cat", "dog"], ["cat"])
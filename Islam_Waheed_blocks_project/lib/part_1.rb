def select_even_nums(arr)
    arr.select do |ele| ele.even?
    end 
end
require "byebug"
def reject_puppies(hash)
    hash.reject {  |i|  i["age"] <= 2 }    
end

def count_positive_subarrays(arr)
    arr.count {|ele| ele.sum > 0}
end

def aba_translate(str)
    vowels = "eaoui"
    new_str = ""

    str.each_char.with_index do |ele , i| # k0 i1 t2 e3 kibibite 
        # debugger
        if vowels.include?(ele)
            new_str += ele + "b" + ele 
        else
            new_str += ele
        end
    end
    return new_str
end

def aba_array(arr)
new_arr = []
    arr.map do |ele|
        new_arr << aba_translate(ele)
    end
    new_arr
end

p aba_array(["cat", "dog", "butterfly"])
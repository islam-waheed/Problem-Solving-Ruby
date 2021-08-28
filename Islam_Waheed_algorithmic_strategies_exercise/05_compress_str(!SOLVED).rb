# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    hash = Hash.new(0)
    str.each_char {|ele| hash[ele] += 1}
        hash.each do |k,v|
            print v,k
        end
        
end

 compress_str("aaabbc")        # => "3a2bc"
 puts
 compress_str("xxyyyyzz")      # => "2x4y2z"
 puts
 compress_str("qqqqq") 
 puts        # => "5q"
 compress_str("mississippi")
puts   # => "mi2si2si2pi"

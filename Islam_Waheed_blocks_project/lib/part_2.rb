def all_words_capitalized?(arr)
    arr.all? {|ele| ele.capitalize == ele }
end

def no_valid_url?(urls)
    url = [".com", ".net" , ".io" , ".org"]
    urls.none? { |ele|
          url.any? { |ending| ele.end_with?(ending) }
          }
end

def any_passing_students?(arr)
    arr.any? { |ele|
        
        (ele[:grades].sum / ele[:grades].length) >= 75
    }
end

students_1 = [
    { name: "Alice", grades: [60, 68] },
    { name: "Bob", grades: [20, 100] }
  ]
p any_passing_students?(students_1)
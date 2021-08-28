class Dog

    def initialize(name,breed,age,bark,favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def favorite_food?(item)
        item = item.downcase
        item = item.capitalize
        if @favorite_foods.include?(item)
            return true
        else
            return false
        end
    end 

    #Getters
    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def bark
        if @age > 3
            return @bark.upcase
        elsif @age <= 3
            return @bark.downcase
        end
    end

    def favorite_foods
        @favorite_foods
    end

    #Setters

    def age=(num)
        @age = num
    end



end


dog_1 = Dog.new("Fido" , "German Shepard", 3 , "Bork!" , ["Bacon", "Chicken"])

p dog_1.favorite_food?("Bacon")
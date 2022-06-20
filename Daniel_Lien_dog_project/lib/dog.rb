#define class
class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
        
    end
    #getter
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
        @bark
    end
    def favorite_foods
        @favorite_foods
    end

    #setter
    def age=(new_age)
        @age = new_age
    end
    #is a bark method
    def bark
        if @age > 3
            return @bark.upcase
        else
            return @bark.downcase
        end
    end
    def favorite_food?(food)
        favorite_foods.each do |ele|
            if ele.downcase == food.downcase 
                return true
            end
        end
        return false
        
    end
end
#initialize instance of dog





# Object-Oriented Programming

# (7a): Create a class Dessert with getters and setters for name and calories. Define instance methods healthy?, which returns true if a dessert has less than 200 calories, and delicious? which returns true for all desserts.

# Here is the framework:

class Dessert

    attr_accessor :name, :calories

    def initialize(name, calories)
        @name = name
        @calories = calories
    end

 

    def healthy?
        @calories < 200
    end

 

    def delicious?
        true
    end

end

#

# Note: You may define additional helper methods.

# (7b): Create a class JellyBean that extends Dessert, and add a getter and setter for flavor. Modify delicious? to return false if the flavor is "black licorice" (but delicious? should still return true for all other flavors and for all non-JellyBean desserts).

# The JellyBean class should look like this:

class JellyBean < Dessert

    attr_accessor :flavor

    def initialize(name, calories, flavor)
        @flavor = flavor
        @calories = calories
        @name = name
    end

 

    def delicious?

        if @flavor == "black licorice"
            false
        else
            true
        end
    end

end

# j = JellyBean.new('fletchers bean', 201, 'black licorice')
# p j.delicious?
# p j.healthy?

# Note: As before, you may define additional helper methods.
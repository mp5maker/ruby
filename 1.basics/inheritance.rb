require_relative "class.rb"

class SpecializedDog < Dog
    attr_accessor :training

    ## Method Overriding
    def move(destination)
        ## Gets what is there in the Superclass method
        ## super calls the overridden method with the same arguments the overriding method received
        ## super() calls the overriden method with no arguments, even if the overriding method did receive arguments
        super
        puts ("#{@name} moves fast to the #{destination}")
    end

    def habit=(habit)
        @habit = "#{@name} is changing habbit to #{habit}"
    end

    ## Overriding to_s 
    def to_s
        "#{@name} moves fast and #{@habit}"
    end
end

rido = SpecializedDog.new
rido.getName('Rido')
rido.breed = "Malamute"
rido.training = 'All Day'
rido.habit = "Good Eating"

puts(rido.breed)
puts(rido.training)
puts(rido.move("Mars"))
puts(rido.habit)

## Gettting all the methods
puts(rido.methods)

## Gettting all the methods
puts(Dog.superclass)
puts(SpecializedDog.superclass)

## Overriding to_s
puts(rido.to_s)
puts(rido)
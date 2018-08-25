require_relative "class.rb"

class SpecializedDog < Dog
    attr_accessor :training

    ## Method Overriding
    def move(destination)
        ## Gets what is there in the Superclass method
        super
        puts ("#{@name} moves fast to the #{destination}")
    end

    def habit=(habit)
        @habit = "#{@name} is changing habbit to #{habit}"
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
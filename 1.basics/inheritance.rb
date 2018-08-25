require_relative "class.rb"

class SpecializedDog < Dog
    attr_accessor :training
end

rido = SpecializedDog.new
rido.breed = "Malamute"
rido.training = 'All Day'

puts(rido.breed)
puts(rido.training)
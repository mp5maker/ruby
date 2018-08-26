class Dog
    attr_reader :type

    ## Similar to PHP static method
    def self.type(type = 'Husky')
        puts("Dog Type: #{type}")
    end
end

Dog.type("Malamute")


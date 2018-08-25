class Dog
    def getName(name)
        ## Similar to throw new Exception
        if(name == "")
            raise("Name cannot be blank")
        end

        ## Similar to this.name = name, this->name = name
        @name = name
    end

    def talk
        puts ("#{@name} Barks!")
    end

    def move(destination)
        puts ("#{@name} moves to the #{destination}")
    end

    ## Attribute Accessor Method [Writer]
    def breed=(whichBreed)
        @breed = whichBreed
    end
    
    ## Attribute Accessor Method [Reader]
    def breed
        @breed
    end

    ## Shortcuts for Attribute writer, reader, accessor 
    ## attr_writer :name, attr_reader :name, attr_accessor :name
    attr_accessor :owner

    ## Multiple attr_accessor
    attr_accessor :city, :country
end

fido = Dog.new
fido.getName("Fido")
fido.talk
fido.move("moon")

## Attribute Accessor Method (Acting like Javascript)
fido.breed = "Husky"
fido.owner = "Photon Khan"
fido.city = "Dhaka"
fido.country = "Bangladesh"
puts(fido.breed)
puts(fido.owner)
puts(fido.city)
puts(fido.country)

mido = Dog.new
fido.getName("")
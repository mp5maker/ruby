## Open the file
file = File.open("random.txt")

## Tells that the file is a class too
puts file.class

## Readlines
lines = file.readlines
puts "Line 1: #{lines[0]}"
puts "Line 2: #{lines[1]}"
puts "Line 3: #{lines[2]}"

## Safely close the file
file.close

## Quicker way to open the file 
lines = []
File.open("random.txt") do |another_file|
    lines = another_file.readlines
end

all_the_lines = []
relevant_lines = []

## Read all the lines 
lines.each do |line|
    all_the_lines << line
    ## Quick way to filter
    if line.include?("Every")
        relevant_lines << line
    end
end

## Faster method to filter
quick_read = lines.find_all{|line|
                line.include?("lines")
            }

puts(all_the_lines)
puts(relevant_lines)
puts(quick_read)

## New Concept of block similar to function
def greet
    puts "Hello, #{yield}!"
end

greet { "Photon" }

## Map
height = [2, 3, 4]
square = height.map{ |number|
    number*number
}
cube = height.map{ |number|
    number*number*number
}

p square, cube

## Hash [It looks strange as the brain cannot comprehend whether it is javascript or php]
elements = {
    "H" => "Hydrogen",
    "Li" => "Lithium",
}

p elements

## All the ways to create a hash
several_ways = {
    ## key => value concept like php
    1 => "superman",
    "two" => "spiderman",
    :three => "batman"
}

## Access the data in different way
p several_ways[:three]
p several_ways[1]
p several_ways["two"]

## Only Nil is Falsy
votes = Hash.new 
p votes['Brian Martin']

several_ways.each{ |key,value|
    puts("#{key} :: #{value}")
}

## Including a hash data in a class
employee = {
    "name" => "Photon Khan",
    "age" => 27,
    "salary" => 5000
}

class Worker
    attr_accessor :employee

    def getName
        @employee["name"]
    end
    def getAge
        @employee["age"]
    end
    def getSalary
        @employee["salary"]
    end
end

worker = Worker.new
worker.employee = employee
puts(worker.getName)
puts(worker.getAge)
puts(worker.getSalary)

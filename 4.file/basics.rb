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
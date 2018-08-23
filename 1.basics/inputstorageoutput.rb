## Input, Storage, Output

## Simple Display
puts("Welcome to the game!")

## Simple Display with input
print("What is your name: ")
input = gets

## [Anything after the #{input} moves to a new line]
## Gives the regular put output
# puts("Welcome, #{input} and thank you!")

## Inspecting Output 
# input.inspect

## Inspects input as well as gives the puts
# puts(p input)

# Returns the same string but without the newline
name = input.chomp 

puts("Welcome, #{name} and thank you!")

puts("I've got a random number between 1 to 100")
puts("Can you guess it?")

## Generate random numbers between 0 to 99
generate_random_number = rand(100) + 1
get_number = gets

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
target = rand(100) + 1

## Track how many guesses has the player made
num_guesses = 0;

## Track whether the player has guessed it right or not
guessed_it = false

## Opposite of [while]
# while(guessed_it == false && num_guesses < 10)
until(guessed_it || num_guesses == 10)
    puts("You have got #{10 - num_guesses} guesses left.")
    print("Make a guess: ")

## Convert string to integer using .to_i method, .to_s --> Converts to string, .to_t --> floating-point number
    guess = gets.to_i;

## Applying Condition
    if(guess == target)
        puts("Good Job, #{name}.")
        puts("Your predicted my number in #{num_guesses} guesses")
        guessed_it = true
    elsif (guess > target)
        puts("Oops, Your guess was HIGH")
    elsif (guess < target)
        puts("Oops, Your guess was LOW")
    end

    num_guesses += 1
end

## Opposite of [if] is unless
unless (guessed_it)
    puts("Sorry. You didn't get any number. It was #{target}")
end

def area(width = 1, height = 1)
    ## Explicit Return Value
    # return (width*height)
    
    ## Implicit Return Value
    width*height
end

## Displaying what the app does 
puts("Calculating Simple Area of a rectangle")

## Take in the width value
print("Please enter the width: ")
width = gets.to_i

## Take in the height value
print("Please enter the height: ")
height = gets.to_i

answer = area(width, height)
puts("The area of the rectangle is #{answer}")

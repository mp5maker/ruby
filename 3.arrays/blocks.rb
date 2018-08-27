## Calling the block like the pointer
def work(&block)
    puts("I am in the function")
    block.call
    puts("I am in the function again")
    ## We can call the block as many times as possible
    block.call
end

## Writing the same function with do
work do
    puts("I am in the block")
end

## Writing another block concept using parameters
def another_work(&another_block)
    ## Passing the parameters to the block
    puts("Hey I am in the function")
    another_block.call(4, 2)
    puts("Hey I am back in the function")
    another_block.call(5, 3)
end

another_work do |i,j|
 puts("#{i}, #{j}")
end

## We can remove the &block pointer link thing out by using yield
def some_other_work(days=7, hours=24)
    puts("I am working hard in the function")
    yield(days, hours)
    puts("I am back working hard in the function again")
end

some_other_work do |days, hours|
    puts("I work #{hours}/#{days}")
end

## Curly Braces
def another_day_another_work(days=7, hours=24)
    puts("I am working hard in the function another day")
    yield(days, hours)
    puts("I am back working hard in the function again")
end

## Parameters inside the block (Curly Braces)
another_day_another_work {|days, hours|
    puts("I work #{hours}/#{days}")
}

## For each loop in ruby 
['First', 'Second', 'Third'].each{ |item|
    puts(item)
}

## Creating a class now

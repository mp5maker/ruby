## Arrays in ruby are objects too
prices = [2.99, 25.00, 9.99]
puts(prices[0])

## First item of the array
puts(prices.first)

## Last item of the array
puts(prices.last)

## Length of the array
puts(prices.length)

## Find Index of the array
puts(prices.find_index(25.00))

## Push
prices.push(29.88)
p prices

## pop
prices.pop
p prices

## shift
prices.shift
p prices

## shifting operator
prices << 5.99
prices << 8.99
p prices
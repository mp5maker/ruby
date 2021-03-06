## While Loop ##

## Total Price
def total(prices)
    amount = 0
    index = 0
    while index < prices.length
        amount += prices[index]
        index += 1
    end
    amount
end

## Total Refund
def refund(prices)
    amount = 0
    index = 0
    while index < prices.length
        amount -= prices[index]
        index += 1
    end
    amount
end

## Total Discount
def show_discount(prices)
    index = 0
    while index < prices.length
        amount_off = prices[index]/3.0
        puts format("Your discount: $%.2f", amount_off)
        index += 1
    end
end


prices = [3.99, 25.00, 8.99]
puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
show_discount(prices)
prices = [2.99, 25.00, 9.99]

def total(arr)
  sum = 0
  arr.each { |item| sum += item }
  sum
end

def refund(arr)
  sum = 0
  arr.each { |item| sum -= item }
  sum
end

def show_discount(arr)
  arr.each { |item| puts format('Your discount: $%.2f', item / 3) }
end

puts format('$%.2f', total(prices))
puts format('$%.2f', refund(prices))
show_discount(prices)

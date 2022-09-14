def total(arr)
  index = 0
  sum = 0
  while index < arr.length
    sum += arr[index]
    index += 1
  end
  sum
end

def refund(arr)
  index = 0
  sum = 0
  while index < arr.length
    sum -= arr[index]
    index += 1
  end
  sum
end

def show_discount(arr)
  index = 0
  while index < arr.length
    puts format('Show discount $%.2f', arr[index] / 3)
    index += 1
  end
end

prices = [2.99, 25.00, 9.99]
puts format('$%.2f', total(prices))
puts format('$%.2f', refund(prices))
show_discount(prices)

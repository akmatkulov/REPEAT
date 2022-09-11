result = format('Rounded to two decimal places: %.2f', 3.14159265)
puts result
puts format('The %s cost %i cents each.', 'gumballs', 23)
puts format('That will be $%.2f please.', 0.23 * 5)
puts '-' * 30
puts format('%12s | %s', 'Product', 'Cost in Cents')
puts '-' * 30
puts format('%12s | %2i', 'Stamps', 50)
puts format('%12s | %2i', 'Paper Clips', 5)
puts format('%12s | %2i', 'Tape', 99)
puts '-' * 30

def test_format(format_string)
  print "Testing '#{format_string}': "
  puts format(format_string, 12.3456)
end

test_format('%7.3f')
test_format('%7.2f')
test_format('%7.1f')
test_format('%.1f')
test_format('%.2f')

puts '-' * 30

puts format('$%.2f', 2514.2727367874069)
puts format('$%.2f', 1150.6849315068494)
puts format('$%.2f', 3068.4931506849316)

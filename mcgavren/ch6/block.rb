def print_block_result
  block_result = yield
  puts block_result
end

print_block_result { 'Hello, World!' }
print_block_result { 1 + 1 }

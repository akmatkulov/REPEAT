def twice
  puts 'In the method, about to call block!'
  yield
  puts 'Back in the method, about to  call the block again!'
  yield
  puts 'Back in the method, about to return!'
end

twice { puts 'Wooooo' }

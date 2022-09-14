def give
  yield('2 tutrle doves', '1 partridge')
end

give do |present1, present2|
  puts 'My method gave to me...'
  puts present1, present2
end

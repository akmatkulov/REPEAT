def accelerate
  puts 'Stepping on the gas'
  puts 'Speeding up'
end

def sound_horn
  puts 'Pressing the horn button'
  puts 'Beep beep'
end

def use_headlights(brightness = 'low-beam')
  puts "Turning on #{brightness} headlights"
  puts 'Watch out for deer!'
end

def mileage(miles_driven, gas_used)
  if gas_used.zero?
    0.0
  else
    miles_driven / gas_used
  end
end

puts mileage(400, 12)
puts mileage(11_432, 366)
puts mileage(22_223, 0)

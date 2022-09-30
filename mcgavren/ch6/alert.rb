def alert_of_true
  if yield
    puts 'Block returned TRUE!'
  else
    puts 'Block retunred FALSE!'
  end
end

alert_of_true { 2 + 2 == 5 }
alert_of_true { 1 < 2 }

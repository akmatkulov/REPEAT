def order_soda(flavor, size = 'medium', quantity = 1)
  plular = if quantity == 1
             'soda'
           else
             'sodas'
           end
  puts "#{quantity} #{size} #{flavor} #{plular}, comming right up!"
end

order_soda('orange')
order_soda('lemon-lime', 'small', 2)
order_soda('grape', 'large')

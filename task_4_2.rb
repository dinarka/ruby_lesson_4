# Заполнить массив числами от 10 до 100 с шагом 5
# (10..100).to_a.reject { |n| n % 5 != 0 }

arr = (10..100).step(5).to_a
puts "#{arr}"

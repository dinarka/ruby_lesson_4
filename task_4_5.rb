=begin
Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным.
(Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)
Алгоритм определения високосного года: www.adm.yar.ru
=end
months = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]

puts 'Введите число'
date = gets.chomp.to_i
puts 'Введите месяц (числом до 12):'
month = gets.chomp.to_i
puts 'Введите год:'
year = gets.chomp.to_i
if date > 31 || month > 12
  puts "Вы ошиблись. Введите дату снова"
else
  months[1] = 29 if year % 4 == 0 || year % 400 == 0

  todays_day = date if month == 1

  todays_day = months[0..month - 2].reduce(:+) + date
end

puts "Порядковый номер даты: #{todays_day}"

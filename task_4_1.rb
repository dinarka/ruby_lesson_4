=begin
Сделать хеш, содержащий месяцы и количество
дней в месяце. В цикле выводить те месяцы,
у которых количество дней ровно 30
=end

calendar = { January: '31', February: '28', March: '31', April: '30', May: '31',
              June: '30', July: '31', August: '31', September: '30', October: '31', November: '30', December: '31'}

calendar.each do |month, no_of_days|
  if no_of_days == '30'
    puts "In the month of #{month} #{no_of_days} days."
  end
end

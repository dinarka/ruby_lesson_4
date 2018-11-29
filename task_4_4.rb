#Заполнить хеш гласными буквами, где значением будет являться порядковый номер буквы в алфавите (например: А - 1).
arr = ('a'..'z').to_a
vowels = ['a','e','i','o','u']
vow_hash = {}

arr.each_with_index do |val, i|
  vowels.each do |vowel|
    if val == vowel
      vow_hash[i + 1] = val
    end
  end
end


p vow_hash

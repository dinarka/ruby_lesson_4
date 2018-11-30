#Заполнить хеш гласными буквами, где значением будет являться порядковый номер буквы в алфавите (например: А - 1).
alphabet = ('a'..'z').to_a
vowels = ['a','e','i','o','u']
vowel_hash = {}

alphabet.each_with_index do |val, i|
  vowels.each do |vowel|
    if val == vowel
      vowel_hash[i + 1] = val
    end
  end
end


p vowel_hash

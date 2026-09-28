# Завдання 2. Кількість входжень максимальної цифри в число
name = "Владислав Мельник"
puts "Привіт, #{name}!"

print "Введіть натуральне число: "
number = gets.chomp
unless number =~ /\A\d+\z/ and number.to_i > 0
  puts "Це не натуральне число"
  exit 1
end

digits = number.chars.map { |c| c.to_i }
max_digit = digits.max
count = digits.count(max_digit)
puts "Максимальна цифра: #{max_digit}, входжень: #{count}"

# Завдання 7. Квадрати натуральних чисел <= 1000, що закінчуються на 396
name = "Владислав Мельник"
puts "Привіт, #{name}!"

squares = (1..1000).map { |n| [n, n * n] }
found = squares.select { |n, sq| sq % 1000 == 396 }

found.each { |n, sq| puts "#{n}^2 = #{sq}" }
puts "Усього чисел: #{found.length}"

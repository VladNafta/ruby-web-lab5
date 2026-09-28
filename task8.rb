# Завдання 8. Клас Money для роботи з грошовими сумами
name = "Владислав Мельник"
puts "Привіт, #{name}!"
require_relative "money"

def main
  a = Money.new(1250, 75)
  b = Money.new(300, 50)
  big = Money.new(98_765_432_109_876_543_210, 99)
  puts "a = #{a}"
  puts "b = #{b}"
  puts "a + b = #{a + b}"
  puts "a - b = #{a - b}"
  puts "b - a = #{b - a}"
  puts "a * 1.5 = #{a * 1.5}"
  puts "a / 2.5 = #{a / 2.5}"
  puts "b / 3 = #{b / 3}"
  puts "a > b: #{a > b}"
  puts "a < b: #{a < b}"
  puts "a == Money.new(1250, 75): #{a == Money.new(1250, 75)}"
  puts "b.between?(Money.new(300), a): #{b.between?(Money.new(300), a)}"
  puts "[a, b].max = #{[a, b].max}"
  puts "big = #{big}"
  puts "big + a = #{big + a}"
  puts "Класи полів: гривні - #{big.hryvnias.class}, копійки - #{big.kopecks.class}"
  begin
    a / 0
  rescue ZeroDivisionError => e
    puts "a / 0: помилка - #{e.message}"
  end
end
main

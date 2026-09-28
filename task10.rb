# Завдання 10. Доповнення класу Worker методом checkAge
name = "Владислав Мельник"
puts "Привіт, #{name}!"

require_relative "worker"

# клас у Ruby відкритий: дописуємо методи до вже оголошеного Worker
class Worker
  # вік коректний, якщо це ціле число від 1 до 100
  def checkAge(age)
    age.is_a?(Integer) && age.between?(1, 100)
  end

  # некоректний вік не змінює поточне значення
  def setAge(age)
    if checkAge(age)
      @age = age
    else
      puts "  Вік #{age.inspect} некоректний, залишається #{@age.inspect}"
    end
  end
end

ivan = Worker.new("Іван", 25, 1000)
puts "#{ivan.getName}: вік #{ivan.getAge}"

[30, 0, 150, -5, 100, "двадцять"].each do |age|
  puts "setAge(#{age.inspect}):"
  ivan.setAge(age)
  puts "  вік = #{ivan.getAge}"
end

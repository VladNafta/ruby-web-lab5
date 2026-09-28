# Завдання 9. Два об'єкти класу Worker, сума зарплат і віку
name = "Владислав Мельник"
puts "Привіт, #{name}!"

require_relative "worker"

ivan = Worker.new("Іван", 25, 1000)
vasya = Worker.new("Вася", 26, 2000)

[ivan, vasya].each do |w|
  puts "#{w.getName}: вік #{w.getAge}, зарплата #{w.getSalary}"
end
puts "Сума зарплат: #{ivan.getSalary + vasya.getSalary}"
puts "Сума віку: #{ivan.getAge + vasya.getAge}"

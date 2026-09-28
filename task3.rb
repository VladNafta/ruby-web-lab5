# Завдання 3. Сума парних членів послідовності Фібоначчі, що не перевищують 4 000 000
name = "Владислав Мельник"
puts "Привіт, #{name}!"

limit = 4_000_000
fib = [1, 2]
while fib[-1] + fib[-2] <= limit
  fib.push(fib[-1] + fib[-2])
end

puts "Перші 10 членів: #{fib.first(10).join(', ')}"
puts "Членів не більше #{limit}: #{fib.length}, останній: #{fib.last}"
even = fib.select { |x| x.even? }
puts "Парні члени: #{even.join(', ')}"
puts "Сума парних членів: #{even.sum}"

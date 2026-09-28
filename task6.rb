# Завдання 6. Чи є число 15485863 простим (двома способами)
name = "Владислав Мельник"
puts "Привіт, #{name}!"

number = 15_485_863
limit = Math.sqrt(number).to_i # дільники шукаємо лише до кореня

# Спосіб 1: ітератор each
prime1 = true
(2..limit).each do |d|
  if number % d == 0
    prime1 = false
    break
  end
end
puts "Спосіб 1 (each): #{number} #{prime1 ? 'просте' : 'складене'}"

# Спосіб 2: метод any? - чи є хоч один дільник
prime2 = !(2..limit).any? { |d| number % d == 0 }
puts "Спосіб 2 (any?): #{number} #{prime2 ? 'просте' : 'складене'}"

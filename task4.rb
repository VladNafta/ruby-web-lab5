# Завдання 4. Результати 20 футбольних ігор
name = "Владислав Мельник"
puts "Привіт, #{name}!"

scored   = [2, 0, 1, 3, 1, 0, 4, 2, 1, 1, 0, 2, 3, 0, 1, 2, 2, 1, 0, 5]
conceded = [1, 0, 2, 3, 0, 1, 1, 2, 1, 3, 0, 0, 1, 2, 1, 4, 1, 0, 0, 2]

results = []
scored.each_index do |i|
  if scored[i] > conceded[i]
    result = "виграш"
  elsif scored[i] < conceded[i]
    result = "програш"
  else
    result = "нічия"
  end
  results.push(result)
  puts "Гра #{(i + 1).to_s.rjust(2)}: #{scored[i]}:#{conceded[i]} - #{result}"
end

puts "Виграшів: #{results.count('виграш')}, нічиїх: #{results.count('нічия')}, програшів: #{results.count('програш')}"

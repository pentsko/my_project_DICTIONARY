def say_hello
  puts "Привіт #{@user_name}, приступим..."

  sleep 1.2

  puts "#{@user_name} для того щоб вибрати First введіть '1'"
  puts "#{@user_name} для того щоб вибрати Second введіть '2'"
end

def press_number_to_continue

  sleep 0.5

  puts "#{@user_name} для того щоб перевірити знання з файлу First введіть '1'"
  puts "#{@user_name} для того щоб перевірити знання з файлу Second введіть '2'"
end

def congratulation
  puts "Вітаємо, Ви пройшли наш тест"
end

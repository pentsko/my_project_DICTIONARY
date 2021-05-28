# puts user_chose_item = gets.chomp
def chose_item
  # user_chose_item = ""
  # while user_chose_item != "1" || user_chose_item != "2"
  puts user_chose_item = gets.chomp
  end

  if user_chose_item == "1"
    File.open("First.txt", "r") do |file|
      read_file = file.readlines
      puts read_file
      puts "***"
      puts "#{@name} нажміть  '1' коли будете готові перейти до тестів"
    end

  elsif user_chose_item == "2"
    File.open("Second.txt", "r") do |file|
      read_file = file.readlines
      puts read_file
      puts "***"
      puts "#{@name} нажміть будь яку цифру коли будете готові перейти до тестів"
    end
  end
# end

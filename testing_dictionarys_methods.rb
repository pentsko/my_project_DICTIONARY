def chose_item
  user_chose_item = gets.chomp
  if user_chose_item == "1"
    File.open("First.txt", "r") do |file|
      puts read_file = file.readlines
      puts "***"
      puts "#{@name} нажміть  '1' коли будете готові перейти до тестів"
    end
  elsif user_chose_item == "2"
    File.open("Second.txt", "r") do |file|
      puts read_file = file.readlines
      puts "***"
      puts "#{@name} нажміть будь яку цифру коли будете готові перейти до тестів"
    end
    # else
    #   puts "repeat"
  end
end

# end




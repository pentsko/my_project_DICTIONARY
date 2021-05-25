def chose_item
  while user_chose_item = gets.chomp
    if user_chose_item == "1"
      File.open("First.txt", "r") do |file|
        puts read_file = file.readlines
      end
    elsif user_chose_item == "2"
      File.open("Second.txt", "r") do |file|
        puts read_file = file.readlines
      end
    else
      puts "repeat"
    end
  end
end

chose_item



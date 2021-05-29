def testing_entering_translation

  enter_number_file = gets.chomp
  if enter_number_file == "1"
    hash = []
    File.open("First.txt", "r+") do |file|
      hash = file.readlines
    end
    hash.find_all do |el|
      first, *last = el.split(/ - /)
      puts last
      puts "#{@name} введіть переклад: "
      user_word = gets.upcase.chomp

      if user_word.upcase == first.upcase
        puts "Правильно з першої спроби "

      else
        while user_word.upcase != first.upcase do
          File.open("learn.txt", "w") do |file|
            file.write("#{first}, #{last}")
            puts first[0]
          end

          user_word = gets.chomp
          if user_word.upcase == first.upcase
            puts "Правильно з другої спроби"
          elsif user_word.upcase != first.upcase
            length_of_half_word = (first.length - 1) / 2
            puts first[0..length_of_half_word].to_s
            user_word = gets.chomp
            if user_word.upcase == first.upcase
              puts "Правильно з третьої спроби"
            else
              puts (first)
            end
          end
        end
      end
    end
  elsif enter_number_file == "2"
    hash = []
    File.open("Second.txt", "r+") do |file|
      hash = file.readlines
    end
    hash.find_all do |el|

      first, *last = el.split(/ - /)

      puts last
      puts "#{@name} введіть переклад: "
      user_word = gets.chomp
      if user_word.upcase == first.upcase
        puts "Правильно з першої спроби"
      else
        while user_word.upcase != first.upcase do
          File.open("learn.txt", "w") do |file|
            file.write("#{first}, #{last}")
          end
          puts first[0]
          user_word = gets.chomp
          if user_word.upcase == first.upcase
            puts "Правильно з другої спроби"
          elsif user_word.upcase != first.upcase
            length_of_half_word = (first.length - 1) / 2
            puts first[0..length_of_half_word].to_s
            user_word = gets.chomp
            if user_word.upcase == first.upcase
              puts "Правильно з третьої спроби"
            else
              puts (first)
            end
          end
        end
      end
    end
  end
end

testing_entering_translation

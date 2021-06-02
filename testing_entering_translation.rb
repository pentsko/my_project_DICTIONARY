class EnterTranslation
  def initialize (numb = 0)
    @numb = numb
  end

  def chose_item_to_work
    enter_number_file = gets.chomp
    if enter_number_file == "1"
      @numb = "First.txt"
    elsif enter_number_file == "2"
      @numb = "Second.txt"
    else
      chose_item_to_work
    end
  end

  def chose_what_to_read
    hash = []

    File.open("#{@numb}", "r+") do |file|
      hash = file.readlines
    end

    hash.find_all do |el|
      first, *last = el.split(/ - /)
      puts "#{@user_name} введіть переклад: "
      puts last
      user_word = gets.upcase.chomp

      if user_word.upcase == first.upcase
        puts "ПРАВИЛЬНО З ПЕРШОЇ СПРОБИ"

      else
        while user_word.upcase != first.upcase do
          File.open("learn.txt", "w") do |file|
            file.write("#{first}, #{last}")
            puts first[0]
          end

          user_word = gets.chomp
          if user_word.upcase == first.upcase
            puts "ПРАВИЛЬНО З ДРУГОЇ СПРОБИ"
          elsif user_word.upcase != first.upcase
            length_of_half_word = (first.length - 1) / 2
            puts first[0..length_of_half_word].to_s
            user_word = gets.chomp
            if user_word.upcase == first.upcase
              puts "ПРАВИЛЬНО З ТРЕТЬОЇ СПРОБИ"
            else
              puts (first)
            end
          end
        end
      end
    end
  end
end



class EnterTranslation
  attr_accessor :file_name

  def initialize (file_name = "Second.txt")
    @file_name = file_name
  end

  def chose_item_to_work
    enter_number_file = gets.chomp.to_sym
    file_names = {
      "1": "First.txt",
      "2": "Second.txt"
    }
    file_name = file_names[enter_number_file]
    file_name || chose_item_to_work
  end

  def chose_what_to_read
    hash = []
    File.open("#{file_name}", "r+") do |file|
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



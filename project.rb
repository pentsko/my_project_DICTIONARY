require_relative './testing_chose_item_to_read.rb'
require_relative './testing_entering_translation.rb'

class Dictionary
  attr_accessor :user_name
  puts "Введіть ваше ім'я: "

  def initialize(user_name)
    user_name = gets.chomp!
    @user_name = user_name
  end

  def say_hello
    puts "Привіт #{@user_name}, приступим..."

    sleep 1.2

    puts "#{@user_name} для того щоб вибрати First введіть '1'"
    puts "#{@user_name} для того щоб вибрати Second введіть '2'"
  end
  def press_to_continue

    sleep 0.5

    puts "#{@user_name} для того щоб перевірити знання з файлу First введіть '1'"
    puts "#{@user_name} для того щоб перевірити знання з файлу Second введіть '2'"
  end
end

dictionary = Dictionary.new("Taras")
dictionary.say_hello
read = Read_File.new ()
read.chose_item_to_work
read.reading
dictionary.press_to_continue
translation = EnterTranslation.new()
translation.chose_item_to_work
translation.chose_what_to_read

# dictionary.testing_entering_translation

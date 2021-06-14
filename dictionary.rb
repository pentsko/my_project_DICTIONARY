require_relative './chose_item.rb'
require_relative './entering_translation.rb'
require_relative 'program_pointer'

class Dictionary
  attr_accessor :user_name
  puts "Введіть ваше ім'я: "

  def initialize(user_name)
    user_name = gets.chomp!
    @user_name = user_name
  end
end

dictionary = Dictionary.new("Taras")
say_hello
read = ReadFile.new
read.chose_item_to_work
read.reading
press_number_to_continue
translation = EnterTranslation.new()
translation.chose_item_to_work
translation.chose_what_to_read
congratulation



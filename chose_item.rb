require_relative './entering_translation'

class ReadFile < EnterTranslation


  def chose_item_to_work
    super
  end

  def reading
    hash = []
    puts @file_name
    File.open("#{@file_name}", "r+") do |file|
      hash = file.readlines
    end
    hash.find_all do |el|
      puts el
      puts " *** "
    end
  end
end

# file_name = gets.chomp
# read = ReadFile.new
# read.chose_item_to_work
# read.reading

require_relative './entering_translation'

class ReadFile < EnterTranslation

  def initialize (file_name)
    super(file_name)
  end

  def chose_item_to_work
    super
  end

  def reading
    hash = []
    File.open("#{@file_name}", "r+") do |file|
      hash = file.readlines
    end
    hash.find_all do |el|
      puts el
      puts " *** "
    end
  end
end

# read = ReadFile.new ("Second.txt")
# read.chose_item_to_work
# read.reading

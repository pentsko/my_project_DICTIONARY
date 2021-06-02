require_relative './testing_entering_translation'

class Read_File < EnterTranslation

  def initialize (numb = 0)
    @numb = numb
  end

  def chose_item_to_work
    super
    end


  def reading
    hash = []
    File.open("#{@numb}", "r+") do |file|
      hash = file.readlines
    end
    hash.find_all do |el|
      puts el
      puts " *** "
    end
  end
end



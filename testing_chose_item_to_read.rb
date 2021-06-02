class Read_File

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
      # return enter_number_file = gets.chomp
    end
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



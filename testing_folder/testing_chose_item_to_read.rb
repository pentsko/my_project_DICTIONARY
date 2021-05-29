class Read_File

  def initialize (name)
    @name = name
  end

  def chose_item_to_work
    enter_number_file = gets.chomp
    while if enter_number_file == "1"
            name = "First.txt"
          elsif enter_number_file == "2"
            name = "Second.txt"
          else
            enter_number_file = gets.chomp
          end
    end
  end

  def reading
    hash = []
    File.open("@name", "r+") do |file|
      hash = file.readlines
    end
    hash.find_all do |el|
      first, *last = el.split(/ - /)
      puts last
      puts "#{@name} введіть переклад: "
    end
  end
end

read = Read_File.new
read.chose_item_to_work
read.reading

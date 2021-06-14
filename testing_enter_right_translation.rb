class A
  attr_accessor :numb

  def enter
    a = "q"
    word = gets.chomp
    @numb = word == "q"
    numb || enter

  end
end

a = A.new
a.enter

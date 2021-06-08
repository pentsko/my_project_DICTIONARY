# def enter
#   a = "aaa"
#   word = gets.chomp!
#    word == a
#   enter ||  puts ("bad")
#
# end
# enter

def chose_item_to_work
  enter_number_file = gets.chomp.to_sym
  file_names = {
    "1": "First.txt",
    "2": "Second.txt"
  }

  @file_name = file_names[enter_number_file]
  file_name || chose_item_to_work
end
chose_item_to_work

# ef timer_before_chose_file
# Timer.time { |timer = Timer.new.start|}
# end
# ----------------------------------------------------
# def interval seconds
#   loop do
#     yield
#     sleep seconds
#   end
# end
# interval 2 do
#   puts "Добрий ранок "
# end
# --------------------------------------------------
require 'timers'
timers = Timers::Group.new
Timers::Group#after:
two_second_timer = timers.after(2) {puts "Hi Taras"}
timers.wait


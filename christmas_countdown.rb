require 'date'

# how many days until next Christmas? counting from today.

date = Date.new(Date.today.year, Date.today.month, Date.today.day)
xmas = Date.new(Date.today.year, 12, 25)
days_to_xmas = xmas - date

puts "Today is #{date}"
puts "Next Christmas will be on the #{xmas}"
puts "Countdown: #{days_to_xmas.to_i} days left!"

# the same but counting from a specific day (gets.chomp)

puts "Want to know how many days to next Christmas..."
puts "... counting from a specific day of the current year?"
print "> "
user_decision = gets.chomp

if ["y", "yes"].include? user_decision.downcase
  puts "Which day of the month?"
  print "> "
  day = gets.chomp
  puts "Which month?"
  print "> "
  month = gets.chomp
  date = Date.new(Date.today.year, month.to_i, day.to_i)
  xmas = Date.new(Date.today.year, 12, 25)
  days_to_xmas = xmas - date
  puts "If today was #{Date.today.year}/#{month}/#{day}..."
  puts "... there would be #{days_to_xmas.to_i} days left..."
  puts "... to next Christmas."
elsif ["n", "no"].include? user_decision.downcase
  puts "Ok, see you next time."
else
  puts "#{user_decision} is an incorrect answer."
end

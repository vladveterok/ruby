puts 'Hey! When were you born? Please use YYYYMMDD format'

#input
input = gets.chomp

#make three vars for YYYY MM DD 
b_year =  input[0..3].to_i
b_month = input[4..5].to_i
b_day =   input[6..7].to_i

#make var with actual date
t = Time.new
#and make wars for actual year, month, and day
t_year = t.year
t_month = t.month
t_day = t.day

#check age
#check if user is a one year younger (because his this year bDay hasn't happend yet )
age = t_year - b_year
age
if (t_month < b_month || (t_month == b_month && t_day < b_day))
  age -= 1
end

if t_month == b_month && t_day == b_day
  puts 'HAPPY BIRTHDAY!'
end

age.times {puts 'SPANK!'}

#Check if today os his birthday and if so - congrats little bastard

#make SPANK! age times

@arr = ['+,', '-,', '*,', '/']
# @first_number = 0
# @operator = ''
# @second_number = 0
# create / edit a file
# stage the file - git add
# make a commit
# push to a github repo

def first_input
	puts "Welcome to the Ruby Calculator"
	puts "Enter your first number:"
	begin
	first_number = gets
	first_number = Integer(first_number)
rescue
	puts "Doesn't work, Please enter a number"
	retry
end
	operator_input(first_number)
end

def operator_input(first)
	puts "Enter your operator"
	@arr.each do |num|
		print num
	end
	puts ""
	
	operator = gets.chomp.to_s
	while operator != "+" && operator != "-" && operator != "*" && operator != "/" 		
	  puts "Please use +, -, *, /" 
	  puts "Please enter your operator again."
	  operator = gets.chomp.to_s
	end
		array = [first, operator]
		second_input(array)
end

def second_input(array)
	puts "Enter the second number"
	begin	
		second_number = gets
		second_number = Integer(second_number)
rescue
	puts "Doesn't work, Please enter a number"
	retry
	end	
	array << second_number
	calculate(array)
end

def calculate(array)
	if array[1].to_s == "+"
		answer = array[0] + array[2]
	elsif array[1].to_s == "-"
		answer = array[0] - array[2]
	elsif array[1].to_s == "*"
		answer = array[0] * array[2]
	elsif array[1].to_s == "/"
		answer = array[0] / array[2]
	else
		puts "Bad Operator"
	end
	display_answer(array, answer)
end

def display_answer(array, answer)
	puts "#{array[0]} #{array[1]} #{array[2]} = #{answer}"
end


# first_input
while true
first_input
puts "Do you want to run another calculation (y/n)"
choice = gets.strip.downcase
exit (0) if choice == 'n' || choice == 'no'
end
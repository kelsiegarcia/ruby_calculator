@arr = ['+', '-', '*', '/']
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
	first_number = gets.to_f
	operator_input(first_number)
end

def operator_input(first)
	puts "Enter your operator"
	@arr.length do |num|
		puts @arr[num]
	end
	operator = gets.chomp.to_s
	array = [first, operator]
	second_input(array)
end

def second_input(array)
	puts "Enter the second number"
	second_number = gets.to_f
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



first_input

	
	# put all inputs into an eqaution



	# figure out how to do the math on the two numbers



	 
	# output the result to the user



	# do all the bonuses
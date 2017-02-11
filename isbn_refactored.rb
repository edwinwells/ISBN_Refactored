def remove_unwanted(isbn_string)
# Step 1: This will create a new array, named 'refreshed', without any char that's not an integer or an 'x':
## Step 2: then it will call function "check_count", ensuring there are only 10 characters present:
	clay = isbn_string.split("")
	refreshed=[]

	# clay.each do |filter|
	# 	if  filter == "0" || filter == "1" || filter == "2" || filter == "3" || filter == "4" || filter == "5" || filter == "6" || filter == "7" || filter == "8" || filter == "9" || filter =="X" || filter =="x"
	# 		refreshed.push(filter)
	# 	end
	# end
	check_count(refreshed)
end

def check_count(refreshed)
	if refreshed.length<10
		puts "\nIt's less than 10 digits!\n"
		false
	elsif refreshed.length>10
		puts "\nIt's more than 10 digits!\n"
		false
	elsif refreshed.length==10
		puts "\nIt's 10 digits!\n"
		true
		# check_x(refreshed)
	end
end

def check_x(refreshed)
	for i in 0..8 do
		if refreshed[i] == "x" || refreshed[i] == "X"
			puts "Invalid ISBN !!!"
			return false
		end
	end
	check_count(refreshed)
end

def invalid_number (refreshed)
		puts "\nSorry 'bout your luck!\nYou got hold of a counterfeit ISBN!\nBetter luck next time...\n\n"
end

def valid_number (refreshed)
		puts "\nCongratulations!\nYour ISBN #{refreshed.join("")} is Valid!\nHave a nice day:-)\n"
end


def check_the_sum(refreshed)
# First, identify the user-given check-number:
user_given_check_number=refreshed[9]

	sum=0
	x=1
	for n in (0..8) do
		refreshed[n]=refreshed[n].to_i
		addnum=refreshed[n]*x
		sum+=addnum
		x+=1
	end

# semifinal is the check-number:
semifinal=sum%11

# Now, verify that the calculated check-number is valid:

refreshed[9]=refreshed[9].to_i
	if  refreshed[9]==semifinal
		return true
		valid_number(refreshed)
	elsif user_given_check_number=="x" && semifinal==10
		return true
		valid_number(refreshed)
	 elsif user_given_check_number=="X" && semifinal==10
		return true
		valid_number(refreshed)
	else
		return false
		invalid_number(refreshed)
	end
end

def function_carpool

end






remove_unwanted("0-66586*7x84") #INVALID
# remove_unwanted("7421394761") #VALID
# remove_unwanted("7421394765") #INVALID
# print remove_unwanted("7195869X") #VALID
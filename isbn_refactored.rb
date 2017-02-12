def remove_unwanted(isbn_string)
# Step 1: This will create a new array, named 'refreshed', to be manipulated throughout the program:
## Step 2: then it will call function "check_count", ensuring there are only 10 characters present:
	puts "Original number is:  #{isbn_string}\n"	
	refreshed=isbn_string.split("")
	puts "refreshed is:  #{refreshed}\n"


	if refreshed.length==10
		for i in 0..8 do
				if refreshed[i] == "x" || refreshed[i] == "X"
				  invalid=true
				end
		end
		return false if invalid==true
		invalid_number(refreshed) if invalid==true
		check_the_sum(refreshed) if invalid!=true
	end
end

def check_x(refreshed)


	true
	puts "Heading to check_the_sum(refreshed)!"
	check_the_sum(refreshed)
end


def check_the_sum(refreshed)
# First, identify the user-given check-number:
user_given_check_number=refreshed[9]
puts user_given_check_number
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
puts semifinal
# Now, verify that the calculated check-number is valid:

	if  user_given_check_number.to_i==semifinal
		true
		valid_number(refreshed)

	elsif user_given_check_number=="x" && semifinal==10
		true
		valid_number(refreshed)

	 elsif user_given_check_number=="X" && semifinal==10
		true
		valid_number(refreshed)

	else
		false
		invalid_number(refreshed)
	end
end


def invalid_number(refreshed)
		false
		puts "\nSorry 'bout your luck!\nYou got hold of a counterfeit ISBN!\nBetter luck next time...\n\n"
end

def valid_number(refreshed)
		puts "\nCongratulations!\nYour ISBN #{refreshed.join("")} is Valid!\nHave a nice day:-)\n\n"
end

def check_the_sum_other_than_ten_chars(refreshed)


end

def function_carpool

end






# remove_unwanted("0-66586*7x84") #INVALID
# remove_unwanted("7421394761") #VALID
# remove_unwanted("7421394765") #INVALID
# remove_unwanted("0471958697") #VALID
remove_unwanted("877195869x") #VALID
# remove_unwanted("877195x869") #INVALID


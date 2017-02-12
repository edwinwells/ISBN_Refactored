def remove_unwanted(isbn_string)
# Step 1: This will create a new array, named 'refreshed', without any char that's not an integer or an 'x':
## Step 2: then it will call function "check_count", ensuring there are only 10 characters present:

	clay = isbn_string.split("")
	refreshed=[]

	clay.each do |filter|

		if  filter == "0" || filter == "1" || filter == "2" || filter == "3" || filter == "4" || filter == "5" || filter == "6" || filter == "7" || filter == "8" || filter == "9" || filter =="X" || filter =="x"

			refreshed.push(filter)
		end
	end

	check_count(refreshed)
end


def check_count(refreshed)

	if refreshed.length<10
		invalid_isbn(refreshed)
		false
	elsif refreshed.length>10
		check_the_sum_greater_than_ten(refreshed)
		false
	elsif refreshed.length==10
		true
		check_x(refreshed)
	end
end


def check_x(refreshed)

	for i in 0..8 do
		if refreshed[i] == "x" || refreshed[i] == "X"
			invalid_isbn(refreshed)	
		end
	end

	check_the_sum(refreshed)
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
refreshed[9]=refreshed[9]

	if  refreshed[9]==semifinal
			valid_isbn(refreshed)
	elsif user_given_check_number=="x" && semifinal==10
			valid_isbn(refreshed)
	elsif user_given_check_number=="X" && semifinal==10
			valid_isbn(refreshed)
	else
			invalid_isbn(refreshed)
	end
end

def valid_isbn(refreshed)
		puts "\nCongratulations!\nYour ISBN #{refreshed[0..8].join("")}X is Valid!\nHave a nice day:-)\n"
end

def invalid_isbn(refreshed)
		puts "\nSorry 'bout your luck!\nYou got hold of a counterfeit ISBN!\nBetter luck next time...\n\n"
end

# remove_unwanted("0-66586*7x84") #INVALID
# remove_unwanted("7421394761") #VALID
# remove_unwanted("7421394765") #INVALID
# print remove_unwanted("7195869X") #VALID
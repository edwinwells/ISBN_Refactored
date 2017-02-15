require 'sinatra'
require_relative 'isbn_refactored.rb'

get '/' do
    erb :User_Input_ISBN_Number
end

post '/remove_unwanted(isbn_string)' do
	number = params[:isbn_string]
	result = remove_unwanted(number)

	if result==true 
		"\nCongratulations!\nYour ISBN #{number} is Valid!\nHave a nice day:-)\n\n"
	else
		"\nSorry 'bout your luck!\nYou got hold of a counterfeit ISBN!\nBetter luck next time...\n\n"
	end



end
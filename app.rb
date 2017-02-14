require 'sinatra'
require_relative 'isbn_refactored.rb'

get '/' do
    erb :User_Input_ISBN_Number
end

post '/remove_unwanted(isbn_string)' do

result = remove_unwanted(params[:isbn_string])

	if result==true 
		"\nCongratulations!\nYour ISBN is Valid!\nHave a nice day:-)\n\n"
	else
		"\nSorry 'bout your luck!\nYou got hold of a counterfeit ISBN!\nBetter luck next time...\n\n"
	end



end
require 'sinatra'
require_relative 'isbn_refactored.rb'

get '/' do
    erb :User_Input_ISBN_Number
end

post '/remove_unwanted(isbn_string)' do
	number = params[:isbn_string]
	result = remove_unwanted(number)

	if result==true 
		statement="\nCongratulations!\nYour ISBN #{number} is Valid!\nHave a nice day:-)\n\n"
	else
		statement="\nSorry 'bout your luck!\nYou got hold of a counterfeit ISBN!\nBetter luck next time...\n\n"
	end


	erb :showinfo, :locals => {:number => number, 
		                       :result => result, 
		                       :statement => statement}
end
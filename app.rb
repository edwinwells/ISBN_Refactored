require 'sinatra'
require_relative 'isbn_refactored.rb'
enable :sessions

get '/' do
    erb :User_Input_ISBN_Number
end

post '/remove_unwanted' do
	number = params[:isbn_string]
	session[:result] = remove_unwanted(number)

	if session[:result]==true 
		statement="\nCongratulations!\nYour ISBN #{number} is Valid!\nHave a nice day:-)\n\n"
	else
		statement="\nSorry 'bout your luck!\nYou got hold of a counterfeit ISBN!\nBetter luck next time...\n\n"
	end


	erb :showinfo, :locals => {:number => number, 
		                       :result => session[:result], 
		                       :statement => statement}
end
#tests
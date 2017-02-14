# require 'sinatra'

# get '/' do
# 	# 'Hello world!'
# 	erb :User_Input_ISBN_Number
# end

# post


require 'sinatra'
require_relative 'isbn_refactored.rb'

get '/' do
    erb :User_Input_ISBN_Number
end

post '/remove_unwanted(isbn_string)' do
# result = remove_unwanted(isbn_num)
# 	'#{result}'
end

# post '/isbn_refactored' do
#     # result = remove_unwanted(isbn_num)
#     # "#{result}"
# end
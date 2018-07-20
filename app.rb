require 'sinatra'
require_relative 'random_pairs.rb'
enable :sessions

get '/' do
	erb :first_page
end
post '/names' do
	name1 = params[:name1]
	name2 = params[:name2]
	name3 = params[:name3]
	name4 = params[:name4]
	name5 = params[:name5]
	# name6 = params[:name6]
	# name7 = params[:name7]
	# name8 = params[:name8]
	# name9 = params[:name9]
	# name10 = params[:name10]
	# name11 = params[:name11]
	# name12 = params[:name12]
	# name13 = params[:name13]
	# name14 = params[:name14]
	# name15 = params[:name15]
	# name16 = params[:name16]
	# name17 = params[:name17]
	# name18 = params[:name18]
	# name19 = params[:name19]
	# name20 = params[:name20]
	session[:random_grouping] = randomized_array(params.values)
	redirect '/second_page'
end
get '/second_page' do
	erb :second_page, locals:{random_grouping: session[:random_grouping]}
end

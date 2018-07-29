require 'sinatra'
require_relative 'random_pairs.rb'
enable :sessions

get '/' do
	erb :first_page
end
post '/names' do
	name = params[:name] || []
	session[:random_grouping] = randomized_array(params.values)
	redirect '/second_page'
end
get '/second_page' do
	erb :second_page, locals:{random_grouping: session[:random_grouping]}
end

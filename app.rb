# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require 'json'

current_dir = Dir.pwd
Dir["#{current_dir}/model/*.rb"].each { |file| require file }

use Rack::PostBodyContentTypeParser
	get '/pizzas' do
	  @pizzas = Pizza.all.to_json
	end

	get '/pizzas/:id' do
	  @pizza = Pizza.find(params[:id])
	end

	post '/pizzas' do
		binding.pry
	  @pizza = Pizza.create(params[:pizza])
	end

	put '/pizzas/:id' do
	  @pizza = Pizza.find(params[:id])
	  @pizza.save!
	end

	delete '/articles/:id' do
	  Pizza.destroy(params[:id])
	end
# app.rb

require 'sinatra'
require 'sinatra/activerecord'

current_dir = Dir.pwd
Dir["#{current_dir}/model/*.rb"].each { |file| require file }

	get '/pizzas' do
	  @pizzas = Pizza.all
	end

	get '/pizzas/:id' do
	  @pizza = Pizza.find(params[:id])
	end

	post '/pizza' do
	  @pizza = Pizza.create(params[:pizza])
	end

	put '/pizzas/:id/save' do
	  @pizza = Pizza.find(params[:id])
	  @pizza.save!
	end

	delete '/articles/:id' do
	  Pizza.destroy(params[:id])
	end
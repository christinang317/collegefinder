require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/questions' do
    erb :questions 
  end 

  post '/results' do
    

    
    type_colleges = params[:user_type]
    size_colleges = params[:user_size]
    location_colleges = params[:user_location]
    acceptance_colleges = params[:user_acceptance]
    
    # @final_list.push(college.dig(type_colleges.to_sym, size_colleges.to_sym, location_colleges.to_sym, acceptance_colleges.to_sym))
    #  @result = college.dig(type_colleges.to_sym, size_colleges.to_sym, location_colleges.to_sym, acceptance_colleges.to_sym)
     #college[type_colleges.to_sym][size_colleges.to_sym][location_colleges.to_sym][acceptance_colleges.to_sym]
     
     @result = college_list(type_colleges, size_colleges, location_colleges, acceptance_colleges)
     
    
    # @paramtest = params.to_s
    erb :results 
    
  end 
  

    

end
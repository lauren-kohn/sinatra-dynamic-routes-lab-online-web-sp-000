require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do 
    @number = params[:number]
    @sq_number = @number.to_i * @number.to_i
    "#{@sq_number}"
  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @repeats = @number.times { puts @phrase }
    "#{@repeats}"
  end 
  
  #get '/say/:word1/:word2/:word3/:word4/:word5'
  
  #end
  
  #get '/:operation/:number1/:number2'
  #  .to_s
  #end

end
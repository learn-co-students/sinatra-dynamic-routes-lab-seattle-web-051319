require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name = @name.reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @num = @num **2
    "#{@num}"
    #binding.pry
  end

  get '/say/:number/:phrase' do
    @p = params[:phrase]
    @num = params[:number].to_i
    @sentence = []
    #binding.pry
    @num.times do 
      @sentence << @p
    end

    "#{@sentence}"
    #binding.pry
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    #binding.pry
    case @operation
    when "add"
      @total = @num1 + @num2
    when "subtract"
      @total = @num2 - @num1
    when "multiply"
      @total = @num1 * @num2
    when "divide"
      @total = @num1/@num2
    end
    "#{@total}"
    #binding.pry
  end

end
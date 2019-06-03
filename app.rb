require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    @name = params[:name]
    @rev = @name.reverse
    "#{@rev}"
  end

  get "/square/:number" do 
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get "/say/:number/:phrase" do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrases = []
    @number.times do 
       @phrases << @phrase
    end
    "#{@phrases}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get "/:operation/:number1/:number2" do 
    @operation = params[:operation]
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i

  @solution = ""    
    if @operation == 'add'
      @solution = @num_1 + @num_2
    elsif @operation == "divide"
      @solution = @num_1 / @num_2
    elsif @operation == "subtract"
      @solution = @num_1 - @num_2
    elsif @operation == "multiply"
      @solution = @num_1 * @num_2
    end

    "#{@solution}"
  end

end
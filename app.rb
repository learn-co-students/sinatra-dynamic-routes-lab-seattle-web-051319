require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

	get '/reversename/:name' do
		@user_name = params[:name].reverse
	end

	get '/square/:number' do
		@num = params[:number].to_i
		"#{@num * @num}"
	end

	get '/say/:number/:phrase' do
		result = []
		@num = params[:number].to_i
		@phra = params[:phrase]
		
		# byebug

		@num.times { result << @phra}
		result.flatten.to_s
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do

		@word1 = params[:word1]
		@word2 = params[:word2]
		@word3 = params[:word3]
		@word4 = params[:word4]
		@word5 = params[:word5]
		word_list = []
		word_list << @word1 << @word2 <<@word3 <<@word4 <<@word5

		# byebug

		result = word_list.join(' ')
		result += "."
	end

	get '/:operation/:number1/:number2' do

		@operation = params[:operation]
		@number1 = params[:number1].to_i
		@number2 = params[:number2].to_i
		# byebug
		if @operation == "add"
			"#{@number1 + @number2}"
		elsif @operation == "subtract"
			"#{@number1 - @number2}"
		elsif @operation == "multiply"
			"#{@number1 * @number2}"
		else
			"#{@number1 / @number2}"
		end
	end





  # get "/hello/:name" do
  #   @user_name = params[:name]
  #   "Hello #{@user_name}!"
  # end


end
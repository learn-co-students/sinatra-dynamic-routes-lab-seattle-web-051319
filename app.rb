class App < Sinatra::Base
	
	get "/reversename/:name" do
		"#{params[:name].reverse}"
	end	
	
	get "/square/:number" do
		"#{(params[:number].to_i ** 2).to_s}"
	end
	
	get "/say/:number/:phrase" do
		string = ""
		params[:number].to_i.times {string.concat(params[:phrase])}
		string
	end
	
	get "/say/:word1/:word2/:word3/:word4/:word5" do
		string = ""
		params.each {|key, value| string.concat(value + " ")}
		string.strip.concat(".")
	end
	
	get "/:operation/:number1/:number2" do
		num1 = params[:number1].to_i
		num2 = params[:number2].to_i
		
		if params[:operation] == "add"
			"#{num1 + num2}"
		elsif params[:operation] == "subtract"
			"#{num1 - num2}"
		elsif params[:operation] == "multiply"
			"#{num1 * num2}"
		elsif params[:operation] == "divide"
			"#{num1 / num2}"
		end
	end
	
end
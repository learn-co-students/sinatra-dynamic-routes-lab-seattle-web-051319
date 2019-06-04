require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    return "#{params[:name].reverse}"
  end

  get '/square/:number' do 
    return "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do 
    result = ""
    params[:number].to_i.times do 
      result += "#{params[:phrase]}\n"
    end
    return result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    return "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      return "#{num1 + num2}"
    when 'subtract'
      return "#{num1 - num2}"
    when 'divide'
      return "#{num1 / num2}"
    when 'multiply'
      return "#{num1 * num2}"
    else 
      return "Go away"
    end
  end
    
  

end
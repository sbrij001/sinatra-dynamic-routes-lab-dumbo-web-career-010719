require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse = params[:name].reverse
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    answer = ""

    @num.times do
      answer += "#{params[:phrase]}"
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end

end

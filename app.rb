require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

      get "/reversename/:name" do
          name = params[:name]
          name = name.reverse
          name
      end

      get "/square/:number" do
          num = params[:number]
          calc = num.to_i * num.to_i
          calc.to_s
      end

      get "/say/:number/:phrase" do

        totalphase = ""
        num = params[:number].to_i

        num.times do
            totalphase = totalphase + params[:phrase]
        end

        totalphase

      end

      get "/say/:word1/:word2/:word3/:word4/:word5" do

        final_string = params[:word1] + " " + final_string = params[:word2] + " " + final_string = params[:word3] + " " + final_string = params[:word4] + " " + final_string = params[:word5]

      end

      get "/:operation/:number1/:number2" do

            num1 = params[:number1].to_i
            num2 = params[:number2].to_i
            result = 0

            case params[:operation]
                when "add"
                    result = num1 + num2
                when "subtract"
                    result = num1 - num2
                when "divide"
                    result = num1 % num2
            end

              result.to_s

        end

end

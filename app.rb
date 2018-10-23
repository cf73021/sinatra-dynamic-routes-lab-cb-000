require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "square/:number" do
    @number = params[:number].to_i
    @number = @number*@number
    @number = @number.to_s
    "#{@number}"
  end
end

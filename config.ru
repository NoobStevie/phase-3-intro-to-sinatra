require 'sinatra'

class App < Sinatra::Base

  get '/' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/add/:num1/:num2' do
    num1 = params[:num1].to_1
    num2 = params[:num2].to_1

    sum = num1 + num2
    { result: sum }.to_json
  end
  
end

run App
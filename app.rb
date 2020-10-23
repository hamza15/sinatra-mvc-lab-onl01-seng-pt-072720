require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/' do
    @analyzed_text = PigLatinizer.new.piglatinize(params[:user_text])
    erb :final
  end
end
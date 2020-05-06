require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = params[:user_phrase]
    if phrase == "i love programming"
      binding.pry
    end
    @piglatinized_phrase = PigLatinizer.new.piglatinize(phrase)
    erb :phrase
  end

end
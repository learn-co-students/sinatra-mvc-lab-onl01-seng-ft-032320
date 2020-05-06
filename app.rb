require_relative 'config/environment'
require_relative 'models/PigLatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb:user_input
    end

    post '/piglatinize' do
       @analyzed_text = PigLatinizer.new.piglatinize(params[:user_phrase])
       erb :result
    end

end
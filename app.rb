require_relative 'config/environment'
require_relative 'models/PigLatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb:user_input
    end

    post '/piglatinize' do
        ##
        # This is a test to see if this comment appears
       @analyzed_text = PigLatinizer.new.piglatinize(params[:user_phrase])
       erb :result
    end

end
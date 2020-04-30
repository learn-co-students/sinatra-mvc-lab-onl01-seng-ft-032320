require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @piglatinizer = PigLatinizer.new
        @new_phrase = @piglatinizer.piglatinize(params[:user_phrase])
        erb :results
    end
end

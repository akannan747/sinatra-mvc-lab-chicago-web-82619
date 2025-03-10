require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    string = params["user_phrase"]
    pig = PigLatinizer.new
    @piglatinized = pig.piglatinize(string)
    erb :display
  end
end
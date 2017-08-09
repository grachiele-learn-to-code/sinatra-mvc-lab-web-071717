require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    erb :piglatinize
  end

  post '/piglatinze' do
    erb :piglatinize
  end
end

require 'sinatra'
require 'slim'
require 'rack/ssl'

configure { set :server, :puma }

class App < Sinatra::Base
  use Rack::SSL

  get '/' do
    slim :index
  end

  get '/about' do
    slim :about
  end

  get '/whats-with-the-dog' do
    slim :bobblehead
  end

  get '/contact' do
    slim :contact
  end
end
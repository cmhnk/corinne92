require 'sinatra'
require 'slim'

configure { set :server, :puma }

class App < Sinatra::Base
  get '/' do
    slim :index
  end
end
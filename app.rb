require 'sinatra'
require 'slim'
require 'rack/ssl'
require 'pony'

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

  post '/contact' do
    ::Pony.mail :to => 'corinne.m.henk@gmail.com',
      :from => 'corinne.m.henk@gmail.com',
      :subject => params[:subject],
      :body => "this message is from: #{params[:email]}\n" + params[:message]
    @thanks = "Thanks for getting in touch!"
    slim :contact
  end

  get '/favorites' do
    slim :favorites
  end

  get '/nine-block-challenge-explained' do
    slim :nine_block_challenge_explained
  end
end
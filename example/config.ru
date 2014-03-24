require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-stitchlabs'

class App < Sinatra::Base
  get '/' do
    redirect '/auth/stitchlabs'
  end

  get '/auth/stitchlabs/callback' do
    response = "Your user is successfully authenticated. Here are the details you need:<br/><br/>"
    response << "access token: #{request.env['omniauth.auth']['credentials']['token']}<br/>"
    response << "refresh token: #{request.env['omniauth.auth']['credentials']['refresh_token']}<br/>"
    response << "expires at: #{request.env['omniauth.auth']['credentials']['expires_at']}<br/>"
    response
  end

  get '/auth/failure' do
    content_type 'application/json'
    MultiJson.encode(request.env)
  end
end

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :stitchlabs, ENV['STITCHLABS_CLIENT_ID'], ENV['STITCHLABS_CLIENT_SECRET'], client_options: { site: "https://api.slbmj2010.com" }
end

run App.new
require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class StitchLabs < OmniAuth::Strategies::OAuth2
      option :name, "stitchlabs"
      option :client_options, {
          :site => 'https://api.stitchlabs.com',
          :authorize_url => '/oauth/authorize',
          :token_url => '/oauth/access_token'
      }
    end
  end
end

OmniAuth.config.add_camelization 'stitchlabs', 'StitchLabs'
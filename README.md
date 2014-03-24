# OmniAuth StitchLabs

StitchLabs OAuth2 Strategy for OmniAuth 1.0.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-stitchlabs'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::StitchLabs` is simply a Rack middleware. Read [the OmniAuth 1.0 docs](https://github.com/intridea/omniauth) for detailed instructions.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :stitchlabs, ENV['STITCHLABS_ID'], ENV['STITCHLABS_SECRET']
end
```

## Example app

You can test this gem out by running the sinatra app in /example.

First add the following endpoint to your developer account on StitchLabs:

     http://localhost:9292/auth/stitchlabs/callback

Next make sure your client ID and secret are in your environment as STITCHLABS_CLIENT_ID and STITCHLABS_CLIENT_KEY.

Now start up the app:

    cd example
    rackup

Finally visit http://localhost:9292. You should be redirected to the StitchLabs staging environment to enter your user credentials. After granting access you should be redirected to a page the shows your granted OAuth token.

## Authentication Hash

Here's an example *Authentication Hash* available in `request.env['omniauth.auth']`:

```ruby
{
  :provider => 'shopify',
  :credentials => {
    :token => 'afasd923kjh0934kf', # OAuth 2.0 access_token, which you store and use to authenticate API requests
  }
}
```

require "httparty"

class Kele
  include HTTParty

  def initialize
    @api_url = 'https://www.bloc.io/api/v1'
    @auth_token = self.class.post('https://www.bloc.io/api/v1/sessions', body: {email: email, password: password})
  end
end

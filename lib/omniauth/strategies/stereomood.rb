require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Stereomood < OmniAuth::Strategies::OAuth
      option :name, 'stereomood'
      option :client_options, {:site => 'http://www.stereomood.com/api'}

      uid { access_token.params[:user_id] }

      info do
        {}
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/song/12345.json').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end
    end
  end
end
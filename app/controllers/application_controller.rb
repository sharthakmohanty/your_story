class ApplicationController < ActionController::Base
 before_action :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def geting_twitter_credentials
    client = Twitter::REST::Client.new do |config|
      config.consumer_key     = ENV['TWITTER_APP_KEY']
      config.consumer_secret  = ENV['TWITTER_SECRET_KEY']
    end
    return client
  end
end

class HomeController < ApplicationController
	require 'twitter'
	require 'uri'
  def index
  end

  def tweets
  # 	client = Twitter::REST::Client.new do |config|
  #     config.consumer_key     = ENV['TWITTER_APP_KEY']
  #     config.consumer_secret  = ENV['TWITTER_SECRET_KEY']
  #     config.access_token     = current_user.twitter_access_token
  #     config.access_token_secret = current_user.twitter_access_token_secret
  #   end
  # #   # p client.home_timeline.collect{|x|x.id}
  # #  #  p client.user_timeline.collect{|x|x.id}

  #   client.home_timeline.each do |t|
  #    tweet =  client.status(t.id)
  #    p tweet.url.to_s.inspect
  #     #Tweet.create(:user_id => current_user.id,:twit_user_id => tweet.user.id,:twit_user_name => tweet.user.name,:twit_user_screen_name => tweet.user.screen_name,:description => tweet.text,:twit_url =>tweet.url.to_s )
  #    p tweet.created_at.inspect
  #    p tweet.user.id.inspect
  #    p tweet.user.name.inspect
  #    p tweet.user.screen_name.inspect
   #end
  end

end

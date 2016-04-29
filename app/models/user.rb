class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and 
  devise :database_authenticatable, :registerable,:omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets,:dependent => :destroy
   def self.find_for_oauth(auth)

	  	where(twitter_id: auth.uid).first_or_create do |user|
		    user.email = auth.info.nickname+auth.uid+"@test.com"
		    user.password = Devise.friendly_token[0,20]
		    user.twitter_id = auth.uid
        user.twitter_user_name = auth.info.name
        user.twitter_access_token = auth["credentials"]["token"]
        user.twitter_access_token_secret = auth["credentials"]["secret"]
        user.twitter_url = auth.info.urls["Twitter"]
  		end
	end
end

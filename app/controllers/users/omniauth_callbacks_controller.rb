class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
   #devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  def twitter
    p "================omniauth twitter  data starts here...."
    p env["omniauth.auth"]
    p "================omniauth twitter  data ends here...."
   #===================twitter oauth data like  these start here...#===================
   #OmniAuth::AuthHash credentials=#<OmniAuth::AuthHash secret=\"XSKssRX8iy6E3wJOFr7CNmtFxyGoKUsyGW0teMS954SXk\" token=\"384257187-rNNB0q6Vsruu00ijBTGpnk2Vxa7LaIcPCnTUvZof\"> extra=#<OmniAuth::AuthHash access_token=#<OAuth::AccessToken:0x00000006163b58 @token=\"384257187-rNNB0q6Vsruu00ijBTGpnk2Vxa7LaIcPCnTUvZof\", @secret=\"XSKssRX8iy6E3wJOFr7CNmtFxyGoKUsyGW0teMS954SXk\", @consumer=#<OAuth::Consumer:0x000000061dc030 @key=\"oYaiWz3UUsjYuFXp9cw9g\", @secret=\"lwjkYvWhZ3QvGde2LAFXA25wDjl8qkzyy1FqgUqXMPY\", @options={:signature_method=>\"HMAC-SHA1\", :request_token_path=>\"/oauth/request_token\", :authorize_path=>\"/oauth/authenticate\", :access_token_path=>\"/oauth/access_token\", :proxy=>nil, :scheme=>:header, :http_method=>:post, :oauth_version=>\"1.0\", :site=>\"https://api.twitter.com\"}, @http=#<Net::HTTP api.twitter.com:443 open=false>, @http_method=:post, @uri=#<URI::HTTPS https://api.twitter.com>>, @params={:oauth_token=>\"384257187-rNNB0q6Vsruu00ijBTGpnk2Vxa7LaIcPCnTUvZof\", \"oauth_token\"=>\"384257187-rNNB0q6Vsruu00ijBTGpnk2Vxa7LaIcPCnTUvZof\", :oauth_token_secret=>\"XSKssRX8iy6E3wJOFr7CNmtFxyGoKUsyGW0teMS954SXk\", \"oauth_token_secret\"=>\"XSKssRX8iy6E3wJOFr7CNmtFxyGoKUsyGW0teMS954SXk\", :user_id=>\"384257187\", \"user_id\"=>\"384257187\", :screen_name=>\"KoteshwerraoR\", \"screen_name\"=>\"KoteshwerraoR\"}, @response=#<Net::HTTPOK 200 OK readbody=true>> raw_info=#<OmniAuth::AuthHash contributors_enabled=false created_at=\"Mon Oct 03 11:01:20 +0000 2011\" default_profile=false default_profile_image=false description=\"\" entities=#<OmniAuth::AuthHash description=#<OmniAuth::AuthHash urls=[]>> favourites_count=0 follow_request_sent=false followers_count=36 following=false friends_count=77 geo_enabled=true id=384257187 id_str=\"384257187\" is_translation_enabled=false is_translator=false lang=\"en\" listed_count=0 location=\"Bangalore\" name=\" koteshwerrao.R\" notifications=false profile_background_color=\"000000\" profile_background_image_url=\"http://abs.twimg.com/images/themes/theme1/bg.png\" profile_background_image_url_https=\"https://abs.twimg.com/images/themes/theme1/bg.png\" profile_background_tile=false profile_banner_url=\"https://pbs.twimg.com/profile_banners/384257187/1424535158\" profile_image_url=\"http://pbs.twimg.com/profile_images/569165637902008320/KJPYhXh1_normal.jpeg\" profile_image_url_https=\"https://pbs.twimg.com/profile_images/569165637902008320/KJPYhXh1_normal.jpeg\" profile_link_color=\"4A913C\" profile_location=nil profile_sidebar_border_color=\"000000\" profile_sidebar_fill_color=\"000000\" profile_text_color=\"000000\" profile_use_background_image=false protected=false screen_name=\"KoteshwerraoR\" statuses_count=22 time_zone=nil url=nil utc_offset=nil verified=false>> info=#<OmniAuth::AuthHash::InfoHash description=\"\" image=\"http://pbs.twimg.com/profile_images/569165637902008320/KJPYhXh1_normal.jpeg\" location=\"Bangalore\" name=\" koteshwerrao.R\" nickname=\"KoteshwerraoR\" urls=#<OmniAuth::AuthHash Twitter=\"https://twitter.com/KoteshwerraoR\" Website=nil>> provider=\"twitter\" uid=\"384257187\">    ################facebook oauth data like these end here..
   ######twitter oauth data like these end here..#===================
    @user = User.find_for_oauth(env["omniauth.auth"])

         if @user.persisted?
          p 11111111111111111
           #sign_in_and_redirect @user, event: :authentication
           sign_in @user
           redirect_to root_path
           #set_flash_message(:notice, :success) if is_navigational_format?
         else
          p 666666666666666
           #session["devise.#{provider}_data"] = env["omniauth.auth"]
           redirect_to new_user_registration_url
         end
  end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end

Rails.application.config.middleware.use OmniAuth::Builder do
      provider :facebook, ENV['FACEBOOK_APP_KEY'], ENV['FACEBOOK_APP_SECRET']
    	# scope: list of permissions that we are requesting from the user upon authorization
    	# public_profile: only basic info will be available to our app and no actions on user’s behalf may be performed
   		# into_fields:  list of fields that we want to be included in the Authentication Hash
    end
    

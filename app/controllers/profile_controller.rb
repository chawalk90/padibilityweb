class ProfileController < ApplicationController
def profile_params
      params.require(:profile).permit(:name, :user_status)
    end
    before_action :authenticate_user!, only [:show, :edit]
	def seekers
		@profile = Profile.new(profile_params)
    	@profile.save
	end
	before_action :authenticate_user!, only [:show, :edit]
	def owners
		@profile = Profile.new(profile_params)
    	@profile.save
	end
end
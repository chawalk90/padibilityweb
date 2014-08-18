class ProfileController < ApplicationController
def profile_params
      params.require(:profile).permit(:name, :user_status)
    end
	def seekers
		@profile = Profile.new(profile_params)
    	@profile.save
	end
	def owners
		@profile = Profile.new(profile_params)
    	@profile.save
	end
end
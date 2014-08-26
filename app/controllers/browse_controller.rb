class BrowseController < ApplicationController
	#before_filter :new, :create, :survey_params, :owners, :seeker, :survey_params, :idcheck
	def browse_params
      browse_params.require(:browse).permit(:first_name, :last_name)
	end
	def new
		@browse = Browse.new
	end
	def create
		@browse = Browse.new(browse_params)
	end
	#private
    def owner
		@browse = Browse.new(browse_params)
		@survey.user_id=current_user.id
    	@browse.save
	end
	def seeker
		@browse = Browse.new(browse_params)
    	@browse.save
	end
	def idcheck
	end
end
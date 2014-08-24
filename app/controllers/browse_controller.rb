class BrowseController < ApplicationController
def browse_params
      params.require(:browse).permit(:name)
end
def new
	@browse = Browse.new
end
    def owners
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
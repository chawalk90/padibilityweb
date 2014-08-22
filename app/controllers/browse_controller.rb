class BrowseController < ApplicationController
def browse_params
      params.require(:survey).permit(:name)
    end
	def seekers
		@browse = Browse.new(browse_params)
    	@browse.save
	end
	def owners
		@browse = Browse.new(browse_params)
    	@browse.save
	end
end
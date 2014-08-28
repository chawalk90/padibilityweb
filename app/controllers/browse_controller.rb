	class BrowseController < ApplicationController
		#before_filter :new, :create, :survey_params, :owners, :seeker, :survey_params, :idcheck
	    def owners
			@surveys = Survey.where(user_status = "owner", 1)
		end
		def seekers
			@surveys = Survey.where(user_status = "seeker", 0)
		end
	end
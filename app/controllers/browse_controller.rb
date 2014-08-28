	class BrowseController < ApplicationController
		#before_filter :new, :create, :survey_params, :owners, :seeker, :survey_params, :idcheck
	    def owners
			@surveys = Survey.where(user_status: ["seeker"])
		end
		def seekers
			@surveys = Survey.where(user_status: ["owner"])
		end
	end
	class BrowseController < ApplicationController
		#before_filter :new, :create, :survey_params, :owners, :seeker, :survey_params, :idcheck
	    def owners
			@surveys = Survey.where("user_status = seeker", params[:user_status], true)
		end
		def seekers
			@surveys = Survey.where("user_status = owner",  params[:user_status], false)
		end
	end
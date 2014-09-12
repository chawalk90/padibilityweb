	class BrowseController < ApplicationController
		#before_filter :new, :create, :survey_params, :owners, :seeker, :survey_params, :idcheck
	    before_action :authenticate_user!, only [:show, :edit]
	    def owners
			@surveys = Survey.where(user_status: ["owner"])
		end
		before_action :authenticate_user!, only [:show, :edit]
		def seekers 
			@surveys = Survey.where(user_status: ["seeker"])
		end
	end
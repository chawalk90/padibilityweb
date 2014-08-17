class SurveysController < ApplicationController
	def new
		@survey = Survey.new
	end

	def create
	end

	 def survey_params
      params.require(:survey).permit(:name, :email, :password)
    end

    def owners
    	@survey = Survey.new(survey_params)
    	@survey.save
    end
    def seeker
    	@survey = Survey.new
    	@survey.save
    end

private

    def survey_params
    	params.require(:survey).permit(:first_name, :last_name, :email, :looking_for, :moving_to, :gender, :coed, :age, :roommate_type, :housing_type, :roommates_estimate, :roommates_amount, :roommates_group, :roommates_names, :max_rent, :move_in, :move_out, :bedrooms, :amenities, :apartment_pet, :roommate_pet, :hometown, :school, :company, :terms, :avatar, :wake_up, :bedtime, :smoke, :smokeoften, :smokesocially, :smokequit, :drink, :drinkoften, :drinksocially, :drinkquit, :drugs, :drugsoften, :drugssocially, :drugsquit, :interest, :sexualactivity, :sexprivacy, :roommatesexprivacy, :overnight, :overnightoften, :roommateovernight, :realty, :availability, :rentprice, :address, :otherroom, :age_min, :age_max, :age_mode, :pad_photo, :user_status, :sociability, :tidiness, :question, :noise, :political, :religion)
    end

end
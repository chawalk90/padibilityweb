class SurveysController < ApplicationController
  before_filter :new, :create, :survey_params, :owners, :seeker, :survey_params, :idcheck
  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    #if @survey.save
    #redirect_to root_path, notice: "Survey is created."
    #else
    #render 'new'
    #end
  end
  private

  def survey_params
    survey_params = params.require(survey).permit(:avatar)
  end

  def owners
    @survey = Survey.new(survey_params)
    @survey.user_id=current_user.id
    @survey.save
  end

  def seeker
    @survey = Survey.new
    @survey.save
  end

  def idcheck
  end
end
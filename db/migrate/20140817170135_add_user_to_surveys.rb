class AddUserToSurveys < ActiveRecord::Migration
  def change
  	add_column :surveys, :user_id, :integer
  end
  def idcheck
  	@survey.user_id=current_user.id
  	@survey.save
  end
end

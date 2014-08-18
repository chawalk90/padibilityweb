class AddSexPrivacyToSurveys < ActiveRecord::Migration
  def change
  	add_column(:surveys, :sex_privacy, :string)
  end
end

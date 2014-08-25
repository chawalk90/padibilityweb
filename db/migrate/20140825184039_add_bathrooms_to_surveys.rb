class AddQuestioToSurveys < ActiveRecord::Migration
  def change
  	add_column(:surveys, :bathrooms, :integer)
  end
end

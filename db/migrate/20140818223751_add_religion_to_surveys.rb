class AddReligionToSurveys < ActiveRecord::Migration
  def change
  	add_column(:surveys, :religion, :string)
  end
end

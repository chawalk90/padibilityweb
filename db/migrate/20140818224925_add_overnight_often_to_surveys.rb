class AddOvernightOftenToSurveys < ActiveRecord::Migration
  def change
  	add_column(:surveys, :overnight_often, :string)
  end
end

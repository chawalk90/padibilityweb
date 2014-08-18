class AddDrinkOftenToSurveys < ActiveRecord::Migration
  def change
  	add_column(:surveys, :drink_often, :string)
  end
end

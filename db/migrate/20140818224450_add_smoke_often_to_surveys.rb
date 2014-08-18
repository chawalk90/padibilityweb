class AddSmokeOftenToSurveys < ActiveRecord::Migration
  def change
  	add_column(:surveys, :smoke_often, :string)
  end
end

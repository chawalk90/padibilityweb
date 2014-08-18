class AddNoiseToSurveys < ActiveRecord::Migration
  def change
  	add_column(:surveys, :noise, :string)
  end
end

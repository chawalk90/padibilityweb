class AddBathroomsToSurveys < ActiveRecord::Migration
	def change
  		add_column(:surveys, :bathrooms, :string)
  	end
end

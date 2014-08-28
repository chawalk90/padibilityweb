class AddFirstNameToSurveys < ActiveRecord::Migration
  	def change
  		add_column(:surveys, :first_name, :string)
  	end
end

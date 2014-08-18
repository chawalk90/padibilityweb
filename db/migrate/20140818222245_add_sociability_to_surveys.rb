class AddSociabilityToSurveys < ActiveRecord::Migration
  def change
  	add_column(:surveys, :sociability, :string)
  end
end

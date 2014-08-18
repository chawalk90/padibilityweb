class AddPoliticalToSurveys < ActiveRecord::Migration
  def change
  	add_column(:surveys, :political, :string)
  end
end

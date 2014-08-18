class AddTidinessToSurveys < ActiveRecord::Migration
  def change
  	add_column(:surveys, :tidiness, :string)
  end
end

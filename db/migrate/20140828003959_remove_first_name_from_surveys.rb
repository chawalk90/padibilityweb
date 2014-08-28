class RemoveFirstNameFromSurveys < ActiveRecord::Migration
  def change
    remove_column :surveys, :first_name, :string
  end
end

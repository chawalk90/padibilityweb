class AddFirstNameToBrowses < ActiveRecord::Migration
  def change
  	add_column(:browses, :first_name, :string)
  end
end

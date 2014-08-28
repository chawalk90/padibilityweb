class AddAvatarsToUsers < ActiveRecord::Migration
	def self.up
  		change_table :users do |t|
  		t.attachment :avatar
  	end
  	def self.down
		drop_attached_file :users, :avatar
	end
end


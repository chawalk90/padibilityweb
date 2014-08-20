class Survey < ActiveRecord::Base
	belongs_to :user

	has_attached_file :avatar, :styles => { :small => "150x150>" },
						:url => "/assets/surveys/:attachment/:id/:style/:basename.:extension",
						:path => ":rails_root/public//assets/surveys/:attachment/:id/:style/:basename.:extension"

	validates_attachment_presence :avatar
	validates_attachment_size :avatar, :less_than => 5.megabytes
	validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']
end

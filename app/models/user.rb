class User < ActiveRecord::Base
	attr_accessible :name, :email, :password, :password_confirmation,
                  :avatar,
                  :avatar_file_name,
                  :avatar_content_type,
                  :avatar_file_size,
                  :avatar_updated_at
  	has_secure_password
  	has_attached_file :avatar, :styles => { :large => "120x120>", :medium => "48x48>", :thumb => "26x26>" }
  	before_save { |user| user.email = email.downcase }
 	validates :name,  presence: true, length: { maximum: 50 }
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  
  	validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  	validates :password, presence: true, length: { minimum: 6 }
  	validates :password_confirmation, presence: true
end

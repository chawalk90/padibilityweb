class User < ActiveRecord::Base
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :url => "/public/assets/users/:id/:style/:basename.:extension",
                    :path => "rails_root/public/assets/users/:id/:style/:basename.:extension"

		# , :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	#attr_accessible :name, :email, :password, #:password_confirmation,
    #              :avatar,
    #              :avatar_file_name,
    #              :avatar_content_type,
    #              :avatar_file_size,
    #              :avatar_updated_at
  	# has_secure_password
  	# before_save { |user| user.email = email.downcase }
 	# validates :first_name, :last_name, presence: true, length: { maximum: 50 }
  # 	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # 	validates :email, presence: true,
  #                   format: { with: VALID_EMAIL_REGEX },
  #                   uniqueness: { case_sensitive: false }
  # 	validates :password, presence: true, length: { minimum: 6 }
  # 	validates :password_confirmation, presence: true
end

class ActiveRecord::Base
  has_attached_file :avatar
  # Validate content type
  validates_attachment_content_type :avatar, :content_type => /\Aimage/
  # Validate filename
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
  # Explicitly do not validate
  do_not_validate_attachment_file_type :avatar
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :download,
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  def s3_credentials
    {:bucket => "xxx", :access_key_id => "xxx", :secret_access_key => "xxx"}
  end
end

class Avatar < ActiveRecord::Base
  has_attached_file :document, styles: {thumbnail: "60x60#"}
  validates_attachment :document, content_type: { content_type: "application/pdf" }
  validates_something_else # Other validations that conflict with Paperclip's
end
class Message < ActiveRecord::Base
  has_attached_file :asset, styles: {thumb: "100x100#"}

  before_post_process :skip_for_audio

  def skip_for_audio
    ! %w(audio/ogg application/ogg).include?(asset_content_type)
  end
end
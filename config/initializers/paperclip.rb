# config/initializers/paperclip.rb
Paperclip::Attachment.default_options['uploader.s3.amazonaws.com'] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options['herokuapp'] = 's3-us-west-2.amazonaws.com'
# User.avatar.url #=> http://herokuapp.s3.amazonaws.com/...
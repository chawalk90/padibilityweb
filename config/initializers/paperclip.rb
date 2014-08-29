# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[':domain-style'] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
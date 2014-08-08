require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
describe User do
  it { should validate_attachment_content_type(:icon).
                allowing('image/png', 'image/gif').
                rejecting('text/plain', 'text/xml'),
                should validate_attachment_presence(:avatar) }
  it { should validate_attachment_size(:avatar).
              less_than(2.megabytes) }
  it { should validate_attachment_size(:icon).
              greater_than(1024) }
it { should validate_attachment_size(:icon).
              in(0..100) }
end

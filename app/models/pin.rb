class Pin < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image 
  # Validate content type
  validates_attachment_content_type :pin, :content_type => /\Aimage/
  # Validate filename
  validates_attachment_file_name :pin, :matches => [/png\Z/, /jpe?g\Z/]
  # Explicitly do not validate
  do_not_validate_attachment_file_type :pin
end
class Pin < ActiveRecord::Base
     belongs_to :user
     has_attached_file :image, validates_attachment_content_type :file_name, :content_type => /\Aimage/.*\Z/
   end
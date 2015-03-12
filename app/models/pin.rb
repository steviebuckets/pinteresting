class Pin < ActiveRecord::Base
     belongs_to :user
     validates_attachment_content_type :pin_name, :content_type => /\Aimage/.*\Z/
   end
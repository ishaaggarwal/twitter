class Follow < ActiveRecord::Base

   belongs_to :admin
   validates :admin_id, :presence => true, :uniqueness => {:scope => :following_id}   # composite key of admin_id + following_id

   belongs_to :following , :class_name => "Admin", :foreign_key => "following_id"     
   attr_accessible :admin_id, :following_id
end


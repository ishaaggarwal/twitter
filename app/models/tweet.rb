class Tweet < ActiveRecord::Base
  # attr_accessible :title, :body
    belongs_to :admin
    validates_length_of :content , :minimum => 1 , :maximum => 1000 , :message => "Tweet too long..."
    default_scope -> { order('created_at DESC') }
    attr_accessible :admin_id , :content
end

class Tweet < ActiveRecord::Base
  # attr_accessible :title, :body
    belongs_to :admin
    default_scope -> { order('created_at DESC') }
    attr_accessible :admin_id , :content
end

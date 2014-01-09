class AdminController < ApplicationController

def index
end

def post_tweet
@id = current_admin.id

@content = params[:tweet] 
@tweet=Tweet.create(admin_id: @id , content: @content)
end


end

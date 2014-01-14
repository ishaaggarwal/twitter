class AdminController < ApplicationController

def index
  @id = current_admin.id

  # ids of users I am following
  @follow_id=Admin.where(id: (Follow.joins("JOIN tweets ON tweets.admin_id=follows.admin_id AND follows.admin_id = #@id ").pluck('following_id'))).pluck('id')
  # all ids for which tweets are to be found
  @id_all= @follow_id + [@id]
  #All the tweets to be displayed on homepage
  @tweet_all = Tweet.where(:admin_id => @id_all)

  
  @users= Admin.find(:all, :conditions => ['id not in (?)', @id ])

end

 def post_tweet
  @id = current_admin.id
  @content = params[:tweet] 
  @tweet=Tweet.create(admin_id: @id , content: @content)
	# redirect to index
  redirect_to action: 'index'
 #@tweet_all=Tweet.find_all_by_admin_id(@id)
 end




end

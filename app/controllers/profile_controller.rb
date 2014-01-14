class ProfileController < ApplicationController

def show
 @id=params[:id]
 @email=Admin.find_by_id(@id)
 @tweets=Tweet.find_all_by_admin_id(@id)
 @current= current_admin.id
 @id_int= @id.to_i
 @same_user= (@current == @id_int)
 @flag=Follow.where(:admin_id => @current  , :following_id =>  @id)
end

def follow_me
 @current=current_admin.id
 @id=params[:id]
 
 @follow=Follow.create(:admin_id => @current  , :following_id =>  @id)

# redirect_to action: ' profile_path(:id'=> @current) 
 redirect_to profile_path(:id => @id)

end

def unfollow_me
 @current=current_admin.id
 @id=params[:id]
 @unfollow=Follow.where(:admin_id => @current , :following_id => @id).destroy_all
 redirect_to root_path
end


end

# Redirection
# Home page : All tweets, tweet 
# Validations: 
# Styling


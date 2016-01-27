class FriendshipsController < ApplicationController


def create
  @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
  if @friendship.save
    flash[:notice] = "Added friend."
  else
    flash[:error] = "Unable to add friend."
  end
  redirect_to @friendship.friend
end

def destroy
  @friendship = current_user.friendships.find(params[:id])
  friend = @friendship.friend
  @friendship.destroy
  flash[:notice] = "Removed friendship."
  redirect_to friend
end

end
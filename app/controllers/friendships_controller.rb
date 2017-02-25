class FriendshipsController < ApplicationController
  def new
    @friendship = Friendship.new
  end

  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    @inverse_friendship = current_user.inverse_friendships.find_by_user_id(params[:friend_id])

    if @friendship.save
      if @inverse_friendship.present?
        flash[:success] = "Added friend."
      else
        flash[:success] = "Friend request is sent."
      end
      redirect_to users_path
    else
      flash.now[:error] = "Unable to add friend."
      redirect_to users_path
    end
  end

  # DELETE /friendships/1
  # DELETE /friendships/1.json
  def destroy
    @friendship = current_user.friendships.find_by_friend_id(params[:friend_id])
    @inverse_friendship = current_user.inverse_friendships.find_by_user_id(params[:friend_id])

    if @inverse_friendship.present?
      @friendship.destroy
      @inverse_friendship.destroy
      flash[:info] = "Unfriend successfully."
      redirect_to all_friends_path
    else
      @friendship.destroy
      flash[:info] = "Friend request is canceled."
      redirect_to users_path
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def friendship_params
      params.require(:friendship).permit(:user_id, :friend_id)
    end
end

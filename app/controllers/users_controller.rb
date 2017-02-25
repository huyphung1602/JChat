class UsersController < ApplicationController
  def index
    @users = User.all
    @friend_requests = current_user.inverse_friends.all
    @number_of_friend_requests = 0
    @friend_requests.each do |friend_request|
      if !friend_request.inverse_friends.find_by_id(current_user.id)
        @number_of_friend_requests += 1
      end
    end

    @friends = current_user.friends
    @number_of_friends = 0
    @friends.each do |friend|
      if friend.friends.find_by_id(current_user.id)
        @number_of_friends += 1
      end
    end
  end

  def all_friends
    @active_all_friends = true
    @friend_requests = current_user.inverse_friends.all
    @number_of_friend_requests = 0
    @friend_requests.each do |friend_request|
      if !friend_request.inverse_friends.find_by_id(current_user.id)
        @number_of_friend_requests += 1
      end
    end

    @friends = current_user.friends
    @number_of_friends = 0
    @friends.each do |friend|
      if friend.friends.find_by_id(current_user.id)
        @number_of_friends += 1
      end
    end
  end

  def new
    @user = User.new(email: params[:email])
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Welcome! #{@user.name}"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end

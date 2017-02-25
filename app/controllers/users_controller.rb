class UsersController < ApplicationController
  def index
    @users = User.all
    @friend_requests = current_user.inverse_friends.all
  end

  def all_friends
    @friends = current_user.friends
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

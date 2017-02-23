class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by(email: params[:email])
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        flash[:success] = "Welcome back #{current_user.name}"
        redirect_to root_path
      else
        flash.now[:error] = "Wrong password."
        render 'new'
      end
    else
      flash.now[:error] = "User not found"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
    flash[:notice] = "Logged Out"
  end
end

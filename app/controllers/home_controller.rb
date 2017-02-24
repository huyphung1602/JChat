class HomeController < ApplicationController
  def index
    @sign_up_button = true

    if signed_in?
      redirect_to messages_path
    end
  end
end

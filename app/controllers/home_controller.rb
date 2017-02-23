class HomeController < ApplicationController
  def index
    if signed_in?
      redirect_to messages_path
    end
  end
end

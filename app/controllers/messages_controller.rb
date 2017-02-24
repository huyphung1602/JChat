class MessagesController < ApplicationController
  def index
    @messages = current_user.received_messages
    @control_modal = false

    if params[:message_id]
      @current_message = @messages.find(params[:message_id])
      @current_message.read_at = Time.now
      @current_message.save!
    end
  end

  def new
    @message = Message.new
    @users = User.all
  end

  def create
    @message = Message.new message_params
    @message.sender = current_user
    if @message.save
      flash[:success] = "Message has been sent successfully"
      redirect_to messages_path
    else
      flash.now[:error] = "Fail to sent message"
    end
  end

  private
    def message_params
      params.require(:message).permit(:recipient_id, :body, :subject)
    end
end

class MessagesController < ApplicationController
  def index
    @at_inbox = true
    @messages = current_user.received_messages.order("created_at DESC")
    @unread_received_messages = current_user.received_messages.unread.count
    @unread_sent_messages = current_user.sent_messages.unread.count
  end

  def sent_messages
    @messages = current_user.sent_messages.order("created_at DESC")
    @unread_received_messages = current_user.received_messages.unread.count
    @unread_sent_messages = current_user.sent_messages.unread.count
  end

  def show
    @message = Message.find(params[:id])
    respond_to :js
    @message.read_at = Time.now
    @message.save!
  end

  def new
    @message = Message.new
    if params.has_key?(:email)
      @email = URI.decode(params[:email])
    else
      @email = ''
    end
  end

  def create
    @message = Message.new
    @message.sender = current_user
    if User.all.find_by_email(params[:email]).present?
      @message.recipient_id = User.all.find_by_email(params[:email]).id
    end
    @message.subject = params[:subject]
    @message.body = params[:body]
    if @message.save
      flash[:success] = "Message has been sent successfully."
      redirect_to messages_path
    else
      flash[:error] = "Fail to sent message. Please check all the field."
      redirect_to new_message_path
    end
  end

  private
    def message_params
      params.require(:message).permit(:recipient_id, :body, :subject)
    end
end

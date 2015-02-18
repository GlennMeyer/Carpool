class MessageController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(current_user.id)
    @user.messages_as_sender.create(message_params)

    redirect_to inbox_path(current_user)
  end

  def destroy
    mail = Message.find(params[:id])
    mail.destroy

    redirect_to inbox_path(current_user)
  end

  def index
    user = User.find(current_user.id)

    @message = Message.new

    @inbox = user.messages_as_recipient.order('invite DESC, created_at DESC')
    @outbox = user.messages_as_sender.order('created_at DESC')
  end

  def reply

  end

  private
  def message_params
    params.require(:message).permit!
  end
end

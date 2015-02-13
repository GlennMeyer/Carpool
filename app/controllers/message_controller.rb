class MessageController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(current_user.id)
    @user.messages_as_sender.create(message_params)

    redirect_to edit_commute_path(@user, @user.commute)
  end

  def destroy
    mail = Message.find(params[:id])
    mail.destroy

    redirect_to inbox_path(current_user)
  end

  def index
    user = User.find(current_user.id)

    @inbox = user.messages_as_recipient
    @outbox = user.messages_as_sender
  end

  def reply

  end

  private
  def message_params
    params.require(:message).permit!
  end
end

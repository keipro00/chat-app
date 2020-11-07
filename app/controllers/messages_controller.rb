class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
  end

  # この記述の流れの意味
  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    #条件分岐をいれ、投稿が表示されるように
    if @message.save
      redirect_to room_messages_path(@room)
    else
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

end
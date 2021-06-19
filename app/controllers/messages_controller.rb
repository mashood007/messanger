class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = current_user.my_received_messages
    @messages.update(is_read: true)
  end

  def send_index
    @messages = current_user.my_send_messages
  end

  def notify
    count = current_user.my_received_messages.not_read.size
    render json: {count: count }
  end

  def new
    @receivers = User.where.not(id: current_user.id).pluck(:name, :id)
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.sender_id = current_user.id
    if @message.save
      redirect_to @message, notice: 'message sent success fully'
    else
      @receivers = User.where.not(id: current_user.id).pluck(:name, :id)
      render :new
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  private
  def message_params
    params.require(:message).permit(:title, :content, :receiver_id)
  end
end

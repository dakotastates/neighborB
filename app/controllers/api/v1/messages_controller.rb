class Api::V1::MessagesController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]
  before_action :find_user, only:[:destroy]


  def index
    @messages = Message.all
    # byebug
    render json: @messages
  end

  # def show
  #   render json: @user
  # end

  def create
    @message = Message.create(message_params)

    if @message.valid?
      render json: { message: MessageSerializer.new(@message) }, status: :created
    else
      # render json: { error: 'failed to create user' }, status: :not_acceptable
      render json: { error: @message.errors.full_messages }, status: :not_acceptable
    end
  end

  # def update
  #   # byebug
  #   if @user.update(user_params)
  #     render json: @user
  #   else
  #     render json:{errors: @user.errors.full_messages}
  #   end
  # end

  def destroy
  @message.destroy
  render json: @message
end

  private

  def message_params
    params.require(:message).permit( :id, :message, :user_id, :recipient_id)
  end

  def find_message
    @message = Message.find_by_id(params[:id])
  end
end

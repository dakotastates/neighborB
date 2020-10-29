class Api::V1::BoardMessagesController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]
  before_action :find_user, only:[:destroy]


  def index
    @board_messages = BoardMessage.all
    # byebug
    render json: @board_messages
  end

  # def show
  #   render json: @user
  # end

  def create
    @board_message = BoardMessage.create(board_message_params)

    if @board_message.valid?
      render json: { board_message: BoardMessageSerializer.new(@board_message) }, status: :created
    else
      # render json: { error: 'failed to create user' }, status: :not_acceptable
      render json: { error: @board_message.errors.full_messages }, status: :not_acceptable
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
  @board_message.destroy
  render json: @board_message
end

  private

  def board_message_params
    params.require(:board_message).permit( :id, :message, :user_id)
  end

  def find_board_message
    @board_message = BoardMessage.find_by_id(params[:id])
  end
end

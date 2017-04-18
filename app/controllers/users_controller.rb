class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  # REQUEST FRIEND /users/1/request_friend
  def friend_request
    @user = current_user
    friend = User.find(params[:friend_id])
    # p friend
    if @user.friend_request(friend)
      render json: friend
    elsif @user.friend_request(friend) == nil
      render json: 'Already friends'
    end
  end

  # ACCEPT FRIEND /users/1/accept_friend
  def accept_request

  end

  # DECLINE FRIEND /users/1/decline_friend
  def decline_request

  end

  # REMOVE FRIEND /users/1/remove_friend
  def remove_request

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :full_name, :email, :telephone, :profile_image)
    end
end

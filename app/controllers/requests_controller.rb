class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!

  # GET /requests
  def index
    @requests = Request.all

    render json: @requests
  end

  # GET /requests/1
  def show
    render json: @request
  end

  # POST /requests
  def create
    @request = Request.new(request_params)
    @item = @request.item
    @user = User.find_by_id(@request.owner_id)
    @borrower = User.find_by_id(@request.borrower_id)

    if @request.save
      render json: @request, status: :created, location: @request
      UserMailer.request_email(@request, @item, @user, @borrower).deliver
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /requests/1
  def update
    @item = @request.item
    @user = User.find_by_id(@request.borrower_id)
    @owner = User.find_by_id(@request.owner_id)

    if @request.update(request_params)
      render json: @request
      if @request.status == 'accepted'
        UserMailer.accept_email(@request, @item, @user, @owner).deliver
      elsif @request.status == 'rejected'
        UserMailer.reject_email(@request, @item, @user, @owner).deliver
      end
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /requests/1
  def destroy
    @request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_params
      params.require(:request).permit(:status, :item_id, :owner_id, :borrower_id)
    end
end

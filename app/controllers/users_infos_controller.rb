# done
class UsersInfosController < ApplicationController
  skip_before_action :authorized
  before_action :set_users_info, only: [ :show, :update, :destroy ]
  
  # GET /users_infos/1 or /users_infos/1.json
  def show
    render json: @user_info, status: :ok
  end

  def index
    @user_info = UsersInfo.all
    render json: @user_info, status: :ok
  end

  # POST /users_infos or /users_infos.json
  def create
    @users_info = UsersInfo.create!(users_info_params)
    render json: @users_info
  end

  # PATCH/PUT /users_infos/1 or /users_infos/1.json
  def update
    @users_info.update!(users_info_params)
    render json: @users_info
  end

  # DELETE /users_infos/1 or /users_infos/1.json
  def destroy
    @users_info.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_info
      @users_info = UsersInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_info_params
      params.require(:users_info).permit(:user_id, :state, :city, :address, :DOB, :phone_number, :insurance, :insurance_id)
    end
end

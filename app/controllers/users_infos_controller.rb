class UsersInfosController < ApplicationController
  before_action :set_users_info, only: %i[ show update destroy ]

  # GET /users_infos/1 or /users_infos/1.json
  def show
    @user_info = set_users_info
    render json: @user_info
  end

  # GET /users_infos/new
  def new
    @users_info = UsersInfo.new
  end

  # POST /users_infos or /users_infos.json
  def create
    @users_info = UsersInfo.new(users_info_params)

    respond_to do |format|
      if @users_info.save
        format.html { redirect_to users_info_url(@users_info), notice: "Users info was successfully created." }
        format.json { render :show, status: :created, location: @users_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @users_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_infos/1 or /users_infos/1.json
  def update
    respond_to do |format|
      if @users_info.update(users_info_params)
        format.html { redirect_to users_info_url(@users_info), notice: "Users info was successfully updated." }
        format.json { render :show, status: :ok, location: @users_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @users_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_infos/1 or /users_infos/1.json
  def destroy
    @users_info.destroy

    respond_to do |format|
      format.html { redirect_to users_infos_url, notice: "Users info was successfully destroyed." }
      format.json { head :no_content }
    end
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

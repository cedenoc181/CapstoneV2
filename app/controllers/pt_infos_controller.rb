# done
class PtInfosController < ApplicationController
  skip_before_action :authorized, only: [:show, :index]
  before_action :set_pt_info, only: [:show, :update, :destroy]

  # GET /pt_infos/1 or /pt_infos/1.json
  def show
    render json: @pt_info
  end

  def index 
    @pt_info = PtInfo.all
    render json: @pt_info, status: :ok
  end

  # POST /pt_infos or /pt_infos.json
  def create
    @pt_info = PtInfo.create!(pt_info_params)
    render json: @pt_info, status: :created
    end

  # PATCH/PUT /pt_infos/1 or /pt_infos/1.json
  def update
    @pt_info.update!(pt_info_params)
   render json: @pt_info
  end

  # DELETE /pt_infos/1 or /pt_infos/1.json
  def destroy
     @pt_info.destroy
     head :no_content 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pt_info
      @pt_info = PtInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pt_info_params
      params.require(:pt_info).permit(:physical_therapist_id, :email, :fax, 
        :phone_number, :npi_number, :clinic_address, :post_grad_edu,
         :languages, :home_visit, :tele_medicine, :about_me, :insurance_network)
    end
end

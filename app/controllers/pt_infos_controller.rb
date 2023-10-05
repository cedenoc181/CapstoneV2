class PtInfosController < ApplicationController
  before_action :set_pt_info, only: %i[ show create update destroy ]

  # GET /pt_infos/1 or /pt_infos/1.json
  def show
    @pt_info = set_pt_info
    render json: @pt_info
  end

  # GET /pt_infos/new
  def new
    @pt_info = PtInfo.new
  end

  # POST /pt_infos or /pt_infos.json
  def create
    @pt_info = PtInfo.new(pt_info_params)

    respond_to do |format|
      if @pt_info.save
        format.html { redirect_to pt_info_url(@pt_info), notice: "Pt info was successfully created." }
        format.json { render :show, status: :created, location: @pt_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pt_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pt_infos/1 or /pt_infos/1.json
  def update
    pt_info = set_pt_info
    pt_info.update!(pt_info_params)
   render json: pt_info
  end

  # DELETE /pt_infos/1 or /pt_infos/1.json
  def destroy
    @pt_info = pt_info_params
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
      params.require(:pt_info).permit(:physical_therapist_id, :email, :fax, :phone_number, :npi_number, :clinic_address, :post_grad_edu, :home_visit, :telemedicine, :about_me)
    end
end

# done
class PhysicalTherapistsController < ApplicationController
    skip_before_action :authorized, only:[:index, :show]   
    before_action :find_physical_therapist, only: [:show, :update, :destroy]

    def index
        @pt = PhysicalTherapist.all
        render json: @pt, status: :ok
    end

    def show
        render json: @pt, serializer: PhysicalTherapistSerializer
    end

    def create
        @pt = PhysicalTherapist.create!(physical_therapist_params)
        render json: @pt,  status: :created
    end

    def update
        @pt.update!(physical_therapist_params)
        render json: @pt
    end
         
    def destroy
        @pt.destroy
        head :no_content 
    end

    def pt
        @pt = info.pt_info
        render json: @pt
    end

    def sports_fil
        sports = PhysicalTherapist.where(specialization: "Sports")
        render json: sports
    end

    def geriatric_fil
        geriatric = PhysicalTherapist.where(specialization: "Geriatric")
        render json: geriatric
    end

    def cardiovascular_fil
        cardio = PhysicalTherapist.where(specialization: "Cardiovascular")
        render json: cardio
    end

    def neurology_fil 
        neuro = PhysicalTherapist.where(specialization: "Neurology")
        render json: neuro
    end

    def pulmonary_fil
        pulm = PhysicalTherapist.where(specialization: "Pulmonary")
        render json: pulm 
    end

    def oncology_fil 
        oncology = PhysicalTherapist.where(specialization: "Oncology")
        render json: oncology
    end

    def pediatric_fil
        pediatric = PhysicalTherapist.where(specialization: "Pediatric")
        render json: pediatric
    end

    def electrophysiologic_fil
        elec = PhysicalTherapist.where(specialization: "Electrophysiologic")
        render json: elec
    end

    def orthopedic_fil 
        ortho = PhysicalTherapist.where(specialization: "Orthopaedic")
        render json: ortho
    end

    def womens_health
        women = PhysicalTherapist.where(specialization: "Womens Health")
        render json: women
    end

    def yes_HV 
        home = PhysicalTherapist.pt_info.where(home_visits: true)
        render json: home
    end

    def filter_telemedicine
        tele = PhysicalTherapist.pt_info.where(telemedicine: true)
        render json: tele
    end


# want to use this code but its not returning data so hard coding routes 
    # def specialization_filter
    #     @speciality = PhysicalTherapist.where(specialization: params[:specialization].downcase)
    #     render json: @speciality
    # end

    # def filter_by_insurance
    #     target = "Aflac"
    #      insurances = PhysicalTherapist.pluck(:id,:first_name, :last_name, :title, :profile_picture, :clinic_address, :specialization, :insurance_network)
    #         targeted_insurance = insurances.select { |ins| ins.include?(target)}
    #             targeted_insurance.each { |array| render json: array}
    #       end

        # this is commented out until fixed

    # def insurance_filter
    #    @insurance = PhysicalTherapist.where(insurance_network: params[:insurance_network].downcase)
    #    render json: @insurance

    # test this code out and see if this solves the issue is resolved and use ChatGPT to make it dry if needed 
# PhysicalTherapist.pluck(:insurance_network).select!{|insurance| insurance.downcase.include? "Blue Cross Blue Shield"} 
    # end


    private 

    def find_physical_therapist 
       @pt = PhysicalTherapist.find(params[:id])
    end 

    def physical_therapist_params
        params.permit(:first_name, :last_name, :specialization, :title, :profile_picture, :rating)
    end

end

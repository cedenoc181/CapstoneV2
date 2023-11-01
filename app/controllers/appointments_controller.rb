# done
class AppointmentsController < ApplicationController
    before_action :find_appointment, only: [:show, :update, :destroy]


    def index
        @appointment = Appointment.all
        render json:  @appointment, status: :ok
    end

    def show
        render json:  @appointment, status: :ok
    end

    def update 
        @appointment.update!(appointment_params)
       render json:  @appointment
      end 

    def create
        @appointment = Appointment.create!(appointment_params)
        render json:  @appointment, status: :created
    end

    def destroy
        @appointment.destroy
        head :no_content 
    end

    private 

    def find_appointment 
        @appointment = Appointment.find(params[:id])
    end

    def appointment_params
        params.permit(:user_id, :physical_therapist_id, :scheduled, :case, :telemedicine, :home_visit)
    end
    
end

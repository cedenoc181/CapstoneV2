class AppointmentsController < ApplicationController
    before_action :find_appointment, only: %i[show update destroy]


    def index
        @appointment = Appointment.all
        render json:  @appointment, status: :ok
    end

    def show
        render json:  @appointment, status: :ok
    end

    def update 
        @appointment.update!(update_appointments_params)
       render json:  @appointment
      end 

    def create
        @appointment = Appointment.create!(create_appointment_params)
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

    def update_appointments_params
        params.permit(:physical_therapist_id, :scheduled, :case, :telemedicine, :home_visit)
    end 

    def create_appointment_params
        params.permit(:user_id, :physical_therapist_id, :scheduled, :case, :telemedicine, :home_visit)
    end
    
end

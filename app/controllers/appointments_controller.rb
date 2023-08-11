class AppointmentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
    skip_before_action :authorized, only: [:create, :index, :show, :destroy]


    def index
        appointment = Appointment.all
        render json: appointment, status: :ok
    end

    def show
        appointment = find_appointment
        render json: appointment
    end

    def update 
        appointment = find_appointment
        appointment.update!(update_appointments_params)
       render json: appointment
      end 

    def create
        appointment = Appointment.create!(create_appointment_params)
        render json: appointment
    end

    def destroy
        appointment = find_appointment
        appointment.destroy
        head :no_content 
    end

    private 

    def find_appointment 
        appointment = Appointment.find(params[:id])
    end

    def update_appointments_params
        params.permit(:physical_therapist_id, :scheduled, :case, :home_visit)
    end 

    def create_appointment_params
        params.permit(:user_id, :physical_therapist_id, :scheduled, :case, :home_visit)
    end

    def render_record_not_found 
        render json: { error: "Appointment not found" }, status: :not_found 
    end 
    
end

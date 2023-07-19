class ExercisesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
    # skip_before_action :authorized

    def index
        exercises = Exercise.all
        render json: exercises, status: :ok
    end

    def show
        exercise = find_exercise
        render json: exercise, serializer: ExerciseSerializer
    end


# the body part value must be spelt the same way as inn the api 

    def upper_legs
        exercise = Exercise.where(bodyPart: 'upper legs')
        render json: exercise
    end
    
    def lower_legs
        exercise = Exercise.where(bodyPart: 'lower legs')
        render json: exercise
    end

    def upper_arms
        body = Exercise.where(bodyPart:'upper arms')
        render json: body
    end

    def lower_arms
        body = Exercise.where(bodyPart:'lower arms')
        render json: body
    end

      def body_part_filter
        @exercise = Exercise.where(bodyPart: params[:body_part].downcase)
        render json: @exercise
      end



    # below is methods to search exercises throughh equipments 

    def body_weight
        equipment = Exercise.where(target: "body weight")
        render json: equipment
    end

    def stability_ball
        equipment = Exercise.where(target: "stability ball")
        render json: equipment
    end

      def equipment_filter
        @equipment = Exercise.where(equipment: params[:equipment].downcase)
        render json: @equipment
      end
    
    private 

    def find_exercise 
        exercise = Exercise.find(params[:id])
     end 

     def render_record_not_found 
        render json: { error: " Exercise not found" }, status: :not_found 
    end 
    
end

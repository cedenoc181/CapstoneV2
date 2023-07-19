class ExercisesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
    skip_before_action :authorized
    before_action :set_body_part, only: [:upper_legs, :lower_legs, :shoulders, :chest, :back, :upper_arms, :lower_arms, :waist]

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
    render json: @body_part
  end

  def lower_legs
    render json: @body_part
  end

  def shoulders
    render json: @body_part
  end

  def chest
    render json: @body_part
  end

  def back
    render json: @body_part
  end

  def upper_arms
    render json: @body_part
  end

  def lower_arms
    render json: @body_part
  end

  def waist
    render json: @body_part
  end

    # below is methods to search exercises throughh equipments 

    def assisted 
        equipment = Exercise.where(target: "assisted")
        render json: equipment
    end

    def band 
        equipment = Exercise.where(target: "band")
        render json: equipment
    end

    private 

    def find_exercise 
        exercise = Exercise.find(params[:id])
     end 

     def render_record_not_found 
        render json: { error: " Exercise not found" }, status: :not_found 
    end 

    def set_body_part
        @body_part = Exercise.where(bodyPart: body_part_param)
      end
    
      def body_part_param
        params[:body_part].downcase # Assume you'll pass the 'body_part' as a parameter in the request, e.g., /exercises?body_part=upper%20legs
      end

end

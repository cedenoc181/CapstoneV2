class ExercisesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
    skip_before_action :authorized

    def index
        exercises = Exercise.all
        render json: exercises, status: :ok
    end

    def show
        exercise = find_exercise
        render json: exercise, serializer: ExerciseSerializer
    end


# the body part value must be spelt the same way as inn the api 

    def legs
        exercise = Exercise.where(bodyPart: 'Legs')
        render json: exercise
    end

    def shoulders
        exercise = Exercise.where(bodyPart: 'Shoulders')
        render json: exercise
    end

    def chest
        body = Exercise.where(bodyPart:'Chest')
        render json: body
    end

    def back
        body = Exercise.where(bodyPart:'Back')
        render json: body
    end

    def arm
        body = Exercise.where(bodyPart:'Arms')
        render json: body
    end

    def abs
        body = Exercise.where(bodyPart:'Abs')
        render json: body
    end


    private 

    def find_exercise 
        exercise = Exercise.find(params[:id])
     end 

     def render_record_not_found 
        render json: { error: " Exercise not found" }, status: :not_found 
    end 

end

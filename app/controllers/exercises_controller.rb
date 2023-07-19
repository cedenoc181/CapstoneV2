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

    def shoulders
        exercise = Exercise.where(bodyPart: 'shoulders')
        render json: exercise
    end

    def chest
        body = Exercise.where(bodyPart:'chest')
        render json: body
    end

    def back
        body = Exercise.where(bodyPart:'back')
        render json: body
    end

    def upper_arms
        body = Exercise.where(bodyPart:'upper arms')
        render json: body
    end

    def lower_arms
        body = Exercise.where(bodyPart:'lower arms')
        render json: body
    end

    def waist
        body = Exercise.where(bodyPart:'waist')
        render json: body
    end

    # below is methods to search exercises throughh equipments 

    def weighted 
        equipment = Exercise.where(target: "weighted")
        render json: equipment
    end

    def band 
        equipment = Exercise.where(target: "band")
        render json: equipment
    end

    def barbell
        equipment = Exercise.where(target: "barbell")
        render json: equipment
    end

    def body_weight
        equipment = Exercise.where(target: "body weight")
        render json: equipment
    end

    def stability_ball
        equipment = Exercise.where(target: "stability ball")
        render json: equipment
    end

    def cable
        equipment = Exercise.where(target: "cable")
        render json: equipment
    end

    def dumbbell
        equipment = Exercise.where(target: "dumbbell")
        render json: equipment
    end

    def kettlebell 
        equipment = Exercise.where(target: "kettlebell")
        render json: equipment
    end

    def 

    private 

    def find_exercise 
        exercise = Exercise.find(params[:id])
     end 

     def render_record_not_found 
        render json: { error: " Exercise not found" }, status: :not_found 
    end 
    

end

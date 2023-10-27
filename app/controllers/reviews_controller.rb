class ReviewsController < ApplicationController
    before_action :find_review, only:%i[show, update, destroy]
    skip_before_action :authorized, only:%i[index, show]


    def index
        @reviews = Review.all
        render json: @reviews, status: :ok
    end

    def show
        render json: @review, status: :ok
    end

    def create
        @review = Review.create!(review_params)
        render json: @review. status: :created
    end

    def update
        @review.update!(review_params)
        render json: @review
        
    end

    def destroy
        @review.destroy
        head :no_content 
    end

    private 

    def find_review 
        @review = Review.find(params[:id])
    end

    def review_params
        params.permit(:user_id, :physical_therapist_id, :users_review, :photo, :stars)
    end

end

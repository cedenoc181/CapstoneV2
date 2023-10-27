class FavoritesController < ApplicationController
    skip_before_action :authorized
    before_action :find_favorite, only: [:show, :destroy]

    def index
        @favorites = Favorite.all
        render json: @favorites, status: :ok
    end

    def show
        render json: @favorite
    end

    def create
        @favorite = Favorite.create!(create_favorite_params)
        render json: @favorite
    end

    def destroy
        @favorite.destroy
        head :no_content 
    end

    private 

    def find_favorite 
        @favorite = Favorite.find(params[:id])
    end

    def create_favorite_params
        params.permit(:user_id, :exercise_id)
    end

end

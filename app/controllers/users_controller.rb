# done
class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]
    skip_before_action :authorized, only: [:create, :show, :me]

    def index 
        @user = User.all
        render json: @user, status: :ok
    end 

    def show 
        render json: @user, serializer: UserSerializer 
    end 

    def create
       @user = User.create!(create_user_params)
       token = encode_token({user_id: @user.id})
       render json: {user: UserSerializer.new(@user), jwt: token}, status: :created
    end 

    def update 
      @user.update!(update_user_params)
     render json: @user 
    end 

    def destroy
     @user.destroy
     head :no_content 
    end 
    
    def me 
      render json: current_user, status: :ok
    end

    def favorite_exercises 
      render json: current_user.exercises.uniq, status: :ok
    end

    # this will delete from the favorite table associated with this user instead of deleting from the the exercises table
    def fav_delete
      fav = find_ex
      fav.destroy
      head :no_content 
    end
    
    # dont need method because i use the serializer to pull users appointment through association.
    # consider making this a route to updat appointment
    # def index_appointments
    #   @appointments = Appointment.where(user_id: current_user)
    #     render json: @appointments
    #   # render json: current_user.to_json(only: [:appointments]), status: :ok
    # end

    def delete_visit
      @visit = find_appointment
      @visit.destroy
      head :no_content 
    end

    private 

    def find_ex 
      ex = current_user.favorites.find_by(exercise_id: params[:exercise_id])
    end 

    def find_appointment
      @visit = current_user.appointments.find_by(id: params[:id])
    end

    def find_user 
        @user = User.find(params[:id])
    end 

    def create_user_params 
      params.permit(:password, :email, :first_name, :last_name)
    end 

    def update_user_params
      params.permit(:first_name, :last_name, :admin)
    end 

end

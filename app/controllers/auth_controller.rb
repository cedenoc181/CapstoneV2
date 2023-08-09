class AuthController < ApplicationController
    # skip_before_action :authorized, only: [:login]
    skip_before_action :authorized

rescue_from ActiveRecord::RecordNotFound, with: :invalid_email
# if user render user else if pt render pt ?
    def login 
        @user = User.find_by!(email: login_params[:email])
        if @user.authenticate(login_params[:password])
            @token = encode_token(user_id: @user.id)
            render json: {
                user: UserSerializer.new(@user),
                token: @token
            }, status: :accepted
        else
            render json: {message: 'Incorrect password'}, status: :unauthorized
        end
    end


    private 

    def login_params
        params.permit(:email, :password)
    end

    def invalid_email
        render json: {message: 'Invalid email'}, status: :unauthorized
    end
end



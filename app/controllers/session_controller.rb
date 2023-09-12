class SessionController < ApplicationController


    def create
            user = User.find_by(email: params["email"])
            
            if user 
                session[:user_id] = user.id
                render json: {
                    status: :created, 
                    loggin_in: true, 
                    user: user
                }
            else 
                render json: {status: 401}
            end
    end



end

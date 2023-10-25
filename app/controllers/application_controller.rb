class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
    rescue_from ActiveRecord::RecordNotSaved, with: :render_record_not_saved
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    include ActionController::Cookies
    before_action :authorized
    

    def encode_token(payload)
        JWT.encode(payload, 'password') 
    end

    def decoded_token
        header = request.headers['Authorization']
        if header
            token = header.split(" ")[1]
            begin
                JWT.decode(token, 'password')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user 
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end
    
    def authorized
        unless !!current_user
        render json: { message: 'Please log in' }, status: :unauthorized
        end
    end

    private 
    def render_record_not_found
        render json: { error: 'Record not found' }, status: :not_found
      end
      
      def render_record_not_saved
        render json: { error: 'Record could not be saved to the data base, make sure all params are filled accordingly' }, status: :unprocessable_entity
      end
      
      def render_unprocessable_entity
        render json: { error: 'Record is invalid' }, status: :unprocessable_entity
      end
  end

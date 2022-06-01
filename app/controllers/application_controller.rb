class ApplicationController < ActionController::Base
    include ActionController::Cookies

    rescue_from ActiveRecord::RecordNotFound, only: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, only: :record_invalid

    before_action :authorized

    private
    def record_not_found(error)
        render json: {error: "#{error.model} not found"}, status: :not_found
    end

    def record_invalid(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def authorized
        render json: {error: "Not Authorized"}, status: :unauthorized unless session.include? :user_id
    end
    
end

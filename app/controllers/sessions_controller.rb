class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:create, :destroy]

    def create
        user = User.find_by!(username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :ok
        else
            render json: {error: "Invalid password or username"}, status: :unauthorized
        end
    end

    def destroy
        session.delete :user_id
        render json: {}, status: :ok
    end
end

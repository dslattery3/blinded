class UsersController < ApplicationController
    skip_before_action :authorized, only: :create

    def create
        user = User.create!(user_params)
        # if params[:profile_pic]
        #     user.update(profile_pic: params[:profile_pic])
        # end
        render json: user, status: :ok
    end
    
    def destroy
        user = User.find_by!(id: params[:id])
        user.destroy
        render json: {}, status: :ok
    end

    def show
        user = User.find_by!(id: params[:id])
        render json: user, status: :ok
    end

    def update
        user = User.find_by!(id: params[:id])
        user.update(user_params)
        render json: user, status: :ok
    end

    private
    def user_params
        params.permit(:username, :password, :first_name, :last_name, :email, :profile_pic)
    end
end

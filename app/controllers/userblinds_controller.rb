class UserblindsController < ApplicationController

    def create
        userBlind = Userblind.create!(userblind_params)
        render json: userblind_params, status: :created
    end

    def destroy
        userBlind = Userblind.find_by!(id: params[:id])
        userBlind.destroy
        render json: {}, status: :ok
    end

    def show
        render json: Userblind.find_by!(id: params[:id]), status: :ok
    end

    private
    def userblind_params
        params.permit(:user_id, :blind_id)
    end

end

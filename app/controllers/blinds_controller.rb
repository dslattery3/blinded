class BlindsController < ApplicationController
    
    def create
        blind = Blind.create!(blind_params)
        userBlind = Userblind.create!(user_id: params[:user_id], blind_id: blind.id, admin: true)
        render json: blind, status: :ok
    end

    def destroy
        blind = find_blind
        blind.destroy
        render json: {}, status: :ok
    end

    def show
        render json: find_blind, status: :ok
    end

    def update
        blind = find_blind
        blind.update(blind_params)
        render json: blind, status: :ok
    end

    private
    def blind_params
        params.permit(:name, :password, :reveal_date)
    end

    def find_blind
        Blind.find_by!(id: params[:id])
    end

end

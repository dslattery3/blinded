class BlindsController < ApplicationController
    
    def create
        blind = Blind.create!(blind_params)
        userBlind = Userblind.create!(user_id: params[:user_id], blind_id: blind.id, admin: true)
        render json: blind, status: :created
    end

    def destroy
        blind = find_blind.call
        blind.destroy
        render json: {}, status: :ok
    end

    def show
        render json: find_blind.call, status: :ok
    end

    def update
        blind = find_blind.call
        blind.update(blind_params)
        render json: blind, status: :ok
    end

    private
    def blind_params
        params.permit(:name, :password, :reveal_date)
    end

    find_blind = Proc.new {Blind.find_by!(id: params[:id])}

end

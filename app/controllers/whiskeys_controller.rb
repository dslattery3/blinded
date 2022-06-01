class WhiskeysController < ApplicationController
    before_action :authorize

    def create
        render json: Whiskey.create!(whiskey_params), status: :created
    end

    def index
        render json: Whiskey.all, status: :ok
    end

    def show
        render json: Whiskey.find_by!(id: params[:id]), status: :ok
    end

    def update
        whiskey = Whiskey.find_by!(id: params[:id])
        whiskey.update(whiskey_params)
        render json: whiskey, status: :ok
    end

    private 

    def whiskey_params
        params.permit(:name,:proof,:distiller,:age,:whiskey_type,:single_barrel)
    end

end

class SamplesController < ApplicationController
    before_action :authorize

    def create
        render json: Sample.create!(sample_params),status: :created
    end

    def show
        render json: Sample.find_by!(id: params[:id]), stauts: :ok
    end

    def destroy
        Sample.find_by!(id: params[:id]).destroy
        render json: {},status: :ok
    end

    private

    def sample_params
        params.permit(:identifier,:blind_id,:whiskey_id)
    end

end

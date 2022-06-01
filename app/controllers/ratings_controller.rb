class RatingsController < ApplicationController
    before_action :authorize
    
    def create
        render json: Rating.create!(rating_params), stauts: :created
    end

    def show
        render json: Rating.find_by!(id: params[:id]), stauts: :ok
    end

    def destroy
        Rating.find_by!(id params[:id]).destroy
        render json: {}, status: :ok
    end

    private

    def rating_params
        params.permit(:sample_id,:user_id,:nose,:palate,:finish,:notes)
    end
end

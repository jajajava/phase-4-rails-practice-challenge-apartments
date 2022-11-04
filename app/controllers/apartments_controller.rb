class ApartmentsController < ApplicationController
    def index
        render json: Apartment.all
    end

    def show
        render json: Apartment.find(params[:id])
    end

    def create
        render json: Apartment.create(priv_params)
    end

    def update
        render json: Apartment.find(params[:id]).update(priv_params)
    end

    def destroy
        render json: Apartment.find(params[:id]).destroy
    end

    private

    def priv_params
        params.permit(:number)
    end

end

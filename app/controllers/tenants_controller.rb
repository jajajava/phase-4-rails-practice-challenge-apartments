class TenantsController < ApplicationController
    def index
        render json: Tenant.all
    end

    def show
        render json: Tenant.find(params[:id])
    end

    def create
        render json: Tenant.create(priv_params)
    end

    def update
        render json: Tenant.find(params[:id]).update(priv_params)
    end

    def destroy
        render json: Tenant.find(params[:id]).destroy
    end

    private

    def priv_params
        params.permit(:name, :age)
    end
end

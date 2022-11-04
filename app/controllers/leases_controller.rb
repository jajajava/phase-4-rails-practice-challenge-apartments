class LeasesController < ApplicationController
    def create
        Lease.create(priv_params)
    end

    def destroy
        Lease.find(params[:id]).destroy
    end


    private

    def priv_params
        params.permit(:rent, :apartment_id, :tenant_id)
    end


end

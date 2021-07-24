class Api::V1::TenantHistorysController < ApplicationController

    def index
        tenantHistorys = Conctact.all
        render json: tenantHistorys, each_serializer: Api::V1::TenantHistorysSerializer
    end

    def show

    end

    def create
        newTenantHistorys = Contact.new permit_params
        if newTenantHistorys.save
            render json:{"message":"guardado"}
        else 
            render json:{"message":"error"}
        end 
    end

    def destroy

    end

    private

    def permit_params
         params[:params].value(:id, :Property_id, :tenant_user_id, :created_at)
    end


    
end
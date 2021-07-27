class Api::V1::TenantUsersController < ApplicationController

    def index 
        tenantUsers = TenantUser.all
        render json: tenantUsers, each_serializer: Api::V1::TenantUserSerializer
    end

    def show

    end 

    def create
        newTenantUser = TenantUser.new permit_params
        if newTenantUser.save
            render json:{"message":"guardado"}
        else
            render json:{"message":"error"}
        end
    end

    def destroy

    end 

    private 

    def permit_params
        params.require(:tenant_user).permit(:id, :property, :name_bussines, :country, :product_badge, :ID_SCIAN, :ID_DENUE, :antiquity, :superficie, :TenantHistory_id)
    end

end 
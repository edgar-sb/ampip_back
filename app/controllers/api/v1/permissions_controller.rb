class Api::V1::PermissionsController < ApplicationController
    
    def index 
        permissions = Permission.all
        render json: permissions, each_serializer: Api::V1::PermissionSerializer
    end

    def show

    end

    def create 
        newPermission =  Permission.new permit_params
        if newPermission.save
            render json:{"message":"guardado"}
        else
            render json:{"message":newPermission.errors.full_messages}
        end
    end

    def destroy

    end

    private 

    def permit_params
        params.require(:permission).permit(:user_role_permission_id, :name)
    end

end
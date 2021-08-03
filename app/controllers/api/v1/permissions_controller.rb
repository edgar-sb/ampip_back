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

        #newUserRol = UserRol.new pemit_user_rol
        #if newUserRol.save
        #    render json:{"c":"c"}
        # else
        #    render json:{"message":newUserRol.errors.full_messages}
        #end
    end

    private 

    def permit_params
        params.require(:permission).permit(:name)
    end


    def pemit_user_rol
        params.require(:permission).permit(:name, :children_id, :parent_id, :user_information_id)
    end

end
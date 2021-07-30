class Api::V1::UserRolPermissionController < ApplicationController
    
    def index
        maps = UserRolPermission.all
        render json: maps, each_serializer: Api::V1::UserRolPermissionSerializer
    end

    def create
        newUserRol = UserRolPermission.new permit_params
        if newUserRol.save
            render json:{"message":"guardado"}
        else
            render json:{"message":newUserRol.errors.full_messages}
        end
    end

    private 
    
    def permit_params 
        params.require(:user_rol).permit(:permission_id,:user_rol_id,:read,:write)
    end

end
class Api::V1::PermissionController < ApplicationSerializer
    
    def index 
        permissions = Corporate.all
        render json: permissions, each_serializer: Api::V1::PermissionsSerializer
    end

    def show

    end

    def create 
        newPermission = Permission.new permit_params
        if newPermission.save
            render json:{"message":"guardado"}
        else
            render json{"message":"error"}
        end
    end

    def destroy

    end

    private 

    def permit_params
        params[:params],value(:id, :UserRolPermission_id, :name, :created_at, :updated_at)
    end

end
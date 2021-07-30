class Api::V1::UserRolController < ApplicationController
    
    def index
        maps = UserRol.all
        render json: maps, each_serializer: Api::V1::UserRolSerializer
    end

    def create
        newUserRol = UserRol.new permit_params
        if newUserRol.save
            render json:{"message":"guardado"}
        else
            render json:{"message":"error"}
        end
    end

    private 
    
    def permit_params 
        params.require(:user_rol).permit(:name,:children_id,:parent_id)
    end

end
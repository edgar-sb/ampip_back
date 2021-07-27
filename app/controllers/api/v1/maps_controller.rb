class Api::V1::MapsController < ApplicationController
    
    def index
        maps = Map.all
        render json: maps, each_serializer: Api::V1::MapsSerializer
    end

    def create
        newMap = Map.new permit_params
        if newMap.save
            render json:{"message":"guardado"}
        else
            render json:{"message":"error"}
        end
    end

    private 
    
    def permit_params 
        params.require(:maps).permit(:id, :name, :lat, :lng, :details)
    end

end
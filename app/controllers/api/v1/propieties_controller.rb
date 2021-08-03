class Api::V1::PropietiesController < ApplicationController

    def index 
        propieties = Property.all
        render json: propieties, each_serializer: Api::V1::PropertySerializer
    end 

    def show 

    end 

    def create
        newPropieties = Property.new permit_params
        if newPropieties.save
            render json:{"message":"guardado"}
        else
            render json:{"message":"error"}
        end
    end

    def destroy

    end

    private

    def permit_params
        params.require(:propieties).permit(:corporate_id, :type)
    end
end
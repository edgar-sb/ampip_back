class Api::V1::PropietiesController < ApplicationSerializer

    def index 
        propieties = Propieties.all
        render json: propieties, each_serializer: Api::V1::PropietiesSerializer
    end 

    def show 

    end 

    def create
        newPropieties = Propieties.new permit_params
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
        params[:params].value(:id, :Corporate_id, :property_catalog_id, :type, :created_at, :updated_at)
    end
end
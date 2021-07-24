class Api::V1::StatusDisponibilitiesController < ApplicationController

    def index
        statusDisponibilities = StatusDisponibilities.all
        render json: statusDisponibilities, each_serializer: Api::V1::StatusDisponibilitiesSerializer
    end

    def show

    end

    def create
        newStatusDisponibilities = StatusDisponibilities.new permit_params
        if newStatusDisponibilities.save
            render json:{"message":"guardado"}
        else 
            render json:{"message":"error"}
        end 
    end

    def destroy

    end

    private

    def permit_params
         params[:params].value(:id, :PropertyInformation_id, :status_property, :average_price, :use, :created_at, :updated_at)
    end


    
end
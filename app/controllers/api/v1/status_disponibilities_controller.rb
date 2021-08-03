class Api::V1::StatusDisponibilitiesController < ApplicationController

    def index
        statusDisponibilities = StatusDisponibility.all
        render json: statusDisponibilities, each_serializer: Api::V1::StatusDisponibilitySerializer
    end

    def show

    end

    def create
        newStatusDisponibilities = StatusDisponibility.new permit_params
        if newStatusDisponibilities.save
            render json:{"message":"guardado"}
        else 
            render json:{"message":newStatusDisponibilities.errors.full_messages}
        end 
    end

    def destroy

    end

    private

    def permit_params
         params.require(:status_disponibilities).permit(:status_property, :average_price, :use)
    end


    
end
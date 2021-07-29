class Api::V1::PropertyInformationsController < ApplicationController

    def index 
        propertyInformations = PropertyInformation.all
        render json: propertyInformations, each_serializer: Api::V1::PropertyInformationSerializer
    end

    def show

    end

    def create
        newPropertyInformation = PropertyInformation.new permit_params
        if newPropertyInformation.save
            render json:{"message":"guardado"}
        else
            render json:{"message":"error"}
        end
    end

    def destroy

    end

    private 

    def permit_params
        params.require(:property_information).permit(:property_id, :name, :type, :superficie, :address, :english_name, :park_property, :region, :market, :industry, :suprficie_total, :superficie_urbanizada, :superficie_disponible, :inicio_de_operaciones, :number_employe, :practices_recognition, :infrastructure, :navy_number, :message, :postal_code, :colony, :municipality, :state, :status)
    end

end
class Api::V1::CorporatesController < ApplicationController
    def index 
        corporates = Corporate.all
        render json: corporates, each_serializer: Api::V1::CorporateSerializer
    end

    def show

    end 

    def create
        newCorporate = Corporate.new permit_params
        if newCorporate.save
            render json:{"message":"guardado"}
        else 
            render jason:{"menssage":"error"}
        end
    end

    def destroy

    end

    private

    def permit_params
        params.require(:corporate).permit( :id, :name, :english_name, :social_type, :address, :postal_code, :colony, :state, :municipality, :cel, :anual_invetsment, :previus_anual_inv, :next_anual_inv, :downt_date, :corporate_type, :status)
    end
            
end
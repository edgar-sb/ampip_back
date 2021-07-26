class Api::V1::CorporatesController < ApplicationController
    def index 
        render json:{"s":"s"}
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
        params[:params],value( :id, :name, :english_name, :social_type, :address, :postal_code, :colony, :state, :municipality, :cel, :anual_invetsment, :previus_anual_inv, :next_anual_inv, :downt_date, :corporate_type, :status, :created_at)
    end
            
end
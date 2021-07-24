class Api::V1::CorporateInformationsController < ApplicationSerializer

    def index 
        corporateinformations = CorporateInformation.all 
        render json: corporateinformations, each_serializer: Api::V1::CorporateInformationsSerializer
    end

    def show

    end

    def create 
        newCorporateInformation = CorporateInformation.new permit_params
        if newCorporateInformation.save
            render json:{"message":"guardado"}
        else 
            render json:{"message":"error"}
        end
    end

    def destroy

    end

    private

    def permit_params
        params[:params].value(:id, :rfc, :social_media_tw, :social_media_fb, :social_media_inst, :social_media_link, :social_media_web, :Corporate_id, :created_at, :updated_at)
    end

end
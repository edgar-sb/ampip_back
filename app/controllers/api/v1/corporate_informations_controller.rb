class Api::V1::CorporateInformationsController < ApplicationController

    def index 
        corporateInformations = CorporateInformation.all 
        render json: corporateInformations, each_serializer: Api::V1::CorporateInformationSerializer 
    end

    def show

    end

    def create 
        newCorporateInformation = CorporateInformation.new permit_params
        debugger
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
        params.require(:corporate_information).permit(:id, :rfc, :social_media_tw, :social_media_fb, :social_media_inst, :social_media_link, :social_media_web, :corporate_id)
    end

end
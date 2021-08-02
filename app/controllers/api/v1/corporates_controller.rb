class Api::V1::CorporatesController < ApplicationController
    before_action :session_user
    def index 
        corporates = Corporate.all
        render json: corporates, each_serializer: Api::V1::CorporateSerializer
    end

    def show

    end 

    def create
        if @current_user[:user_rols_id] == 1
            newCorporate = Corporate.new permit_params
            if newCorporate.save
                render json:{"message":"guardado"}
            else 
                render jason:{"menssage":"error"}
            end
            #permissionsRescue = Permissions::OauthToken.new(@current_user, "Usuarios").rescue_user_permission_read
        else
            render json:{"message":false}
        end
    end

    private

    def permit_params
        params.require(:corporate).permit( :id, :name, :english_name, :social_type, :address, :postal_code, :colony, :state, :municipality, :cel, :anual_invetsment, :previus_anual_inv, :next_anual_inv, :downt_date, :corporate_type, :status)
    end
          
    def session_user
        userConsult=User.find_by(authentication_token:request.headers["Authorization"])
        if userConsult != nil
            @current_user = UserInformation.find_by(user_id: userConsult)
        else
            @current_user = 0
        end
    end

end
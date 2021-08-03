class Api::V1::PropertyUsersController < ApplicationController

    def index 
      propertyUsers = PropertyUser.all
      render json: propertyUsers, each_serializer: Api::V1::PropertyUserSerializer
    end

    def show

    end

    def create 
        newPropertyUsers = PropertyUser.new permit_params
        if newPropertyUsers.save
            render json:{"message":"guardado"}
        else
            render json:{"message":"error"}
        end
    end 

    def destroy

    end

    private

    def permit_params
        params.require(:property_user).permit(:id, :user_id, :property_id, :type_property)
    end

end
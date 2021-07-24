class Api::V1::PropertyUsersController < ApplicationController

    def index 
        propertyusers = PropertyUser.all
        render json: propertyusers, each_serializer: Api::V1::PropertyUsersSerializer
    end

    def show

    end

    def create 
        newPropertyUser = PropertyUser.new permit_params
        if newPropertyUser.save
            render json:{"message":"guardado"}
        else
            render json:{"message":"error"}
        end
    end 

    def destroy

    end

    private

    def permit_params
        params[:params],value( :id, :User_id, :industrial_park_id, :type_property, :created_at, :updated_at)
    end

end
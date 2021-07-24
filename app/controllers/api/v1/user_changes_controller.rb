class Api::V1::UserChangesController < ApplicationController

    def index
        userChanges = UserChanges.all
        render json: userChanges, each_serializer: Api::V1::UserChangesSerializer
    end

    def show

    end

    def create
        newUserChanges = UserChanges.new permit_params
        if newUserChanges.save
            render json:{"message":"guardado"}
        else 
            render json:{"message":"error"}
        end 
    end

    def destroy

    end

    private

    def permit_params
         params[:params].value( :id, :previews_value, :next_value)
    end  
end
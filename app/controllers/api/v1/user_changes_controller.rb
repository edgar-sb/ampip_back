class Api::V1::UserChangesController < ApplicationController

    def index
        userChanges = UserChange.all
        render json: userChanges, each_serializer: Api::V1::UserChangesSerializer
    end

    def show

    end

    def create
        newUserChanges = UserChange.new permit_params
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
         params.require(:user_changes).permit(:previews_value, :next_value, :message, :email, :user_id)
    end  
end
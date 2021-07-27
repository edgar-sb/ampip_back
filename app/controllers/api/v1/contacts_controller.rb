class Api::V1::ContactsController < ApplicationController

    def index
        contacts = Contact.all
        render json: contacts, each_serializer: Api::V1::ContactSerializer
    end

    def show

    end

    def create
        newContact = Contact.new permit_params
        if newContact.save
            render json:{"message":"guardado"}
        else
            render json:{"message":"error"}
        end
    end

    def destroy

    end

    private

    def permit_params
         params.require(:contact).permit(:id, :name, :phone_number, :website, :property_information_id)
    end

end
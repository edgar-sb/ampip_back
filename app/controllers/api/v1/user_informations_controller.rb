class Api::V1::UserInformationsController < ApplicationController
  before_action :session_user
  def index
    user_info = UserInformation.all 
    render json: user_info, each_serializer: Api::V1::UserInformationSerializer
  end
  def create
    newInformationUser = UserInformation.new permit_params
    if newInformationUser.save
      render json:{"message":"guardado"}
    else
      render json:{"message":"error"}
   end
    
  end
  private
  def session_user
    @current_user=User.find_by(authentication_token:params[:authentication_token])
  end
  def permit_params
    params.require(:information).permit(:user_id, :full_name, :last_name, :address, :state, :office_address, :charge, :date_of_birth, :phone_office, :cel, :corporate_id, :status, :municipality, :colony, :postal_code_number, :user_role_permission, :user_type, :created_at, :updated_at)
  end
end
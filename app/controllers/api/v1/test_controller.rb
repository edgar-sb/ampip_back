class Api::V1::TestController < ApplicationController

    def index
        dashboard = Dashboard::MainDashboard.new(rescue_params).call
        render json:dashboard
    end

    private 

    def rescue_params
        params.require(:rescue_type).permit(:user_type, :id)
    end
    #provado y listo 
    def corporateX
        corps = Corporate.all
        return corps
    end

    #provado y listo
    def contactX 
        return Contact.all
    end

    #provado y listo
    def corporateInfoX
        return CorporateInformation.all
    end

    #provado y listo
    def mapsX
        return Map.all
    end

    #provado y listo
    def permissionX
        return Permission.all
    end

    #provado y listo
    def property
         return Property.all
    end

    #provado y listo
    def propertyInfoX
        return PropertyInformation.all
    end
    #probado y listo
    def propertyUserX
        return PropertyUser.all
    end
    #probado y listo
    def statusDisponibility
        return StatusDisponibility.all 
    end

    #probado y listo
    def tenantHistory
        return TenantHistory.all
    end
    
    #probado y listo
    def tenantUser
        return TenantUser.all
    end

    #probado y listo
    def userChanges
        return UserChange.all
    end
end